from pathlib import Path
import struct,hashlib,json
root=Path('/root/tilelang-metax/race_tests/nsa');v='v070_codex_power_s1_stream_pv_operand_sc-16g-2'
def sections(path):
 data=path.read_bytes();assert data[:4]==b'\x7fELF';assert data[4]==2 and data[5]==1,'expected ELF64 little-endian object'
 h=struct.unpack_from('<16sHHIQQQIHHHHHH',data,0);table=h[6];step=h[11];count=h[12];names_index=h[13]
 entries=[struct.unpack_from('<IIQQQQIIQQ',data,table+i*step) for i in range(count)]
 st=entries[names_index];strings=data[st[4]:st[4]+st[5]];out={}
 for e in entries:
  end=strings.find(b'\0',e[0]);name=strings[e[0]:end].decode()
  if name=='.text' or name.startswith('.text.'):
   chunk=data[e[4]:e[4]+e[5]];out[name]={'bytes':len(chunk),'sha256':hashlib.sha256(chunk).hexdigest()}
 assert out;return out
paths={'parent_v060':root/'rep/v060_codex_power_s1_output_pair_swap_sc-16g-2/case6.mcbin','power_v070':root/'rep'/v/'case6.mcbin'}
out={'command_scope':'same mxcc -device-obj O3/lineinfo/use-fast-math C6 resource capture','sections':{k:sections(f) for k,f in paths.items()},'limitations':'binary section comparison is not ISA decoding;same CLI flags/normal source export required;not a timing waiver'}
out['text_sections_identical']=out['sections']['parent_v060']==out['sections']['power_v070']
(root/'rep'/v/'machine_text_comparison.json').write_text(json.dumps(out,indent=2)+'\n');print(out)
