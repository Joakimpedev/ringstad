$ErrorActionPreference = "Continue"
$base = "C:\Users\User\Claudecode\bedriftapper\brringstad\assets\products"
$baseUrl = "https://www.brodr-ringstad.no/media"

$items = @(
  # Storfe
  @{cat="storfe"; name="entrecote";   url="$baseUrl/pyfh2nis/_kss5336.jpg"}
  @{cat="storfe"; name="indrefilet";  url="$baseUrl/jltb4vpv/_kss5410.jpg"}
  @{cat="storfe"; name="ytrefilet";   url="$baseUrl/moraitwj/_kss5401.jpg"}
  @{cat="storfe"; name="flatbiff";    url="$baseUrl/z3hb0mwa/_kss5525.jpg"}
  @{cat="storfe"; name="tbenstek";    url="$baseUrl/e2cdrd02/_kss5416.jpg"}
  @{cat="storfe"; name="rundstek";    url="$baseUrl/ivdnqru3/_kss5350.jpg"}
  @{cat="storfe"; name="morbrad";     url="$baseUrl/o4bldhyl/_kss5388.jpg"}

  # Karbonader
  @{cat="karbonader"; name="biffkarbonader"; url="$baseUrl/3myau5jz/_kss3202.jpg"}
  @{cat="karbonader"; name="grovekarbonader"; url="$baseUrl/fs5ni2qp/7071341002711_a1n1_2400px.jpg"}
  @{cat="karbonader"; name="kjottkaker"; url="$baseUrl/2ytdscln/_kss2941.jpg"}
  @{cat="karbonader"; name="kjottboller"; url="$baseUrl/o3dfaya5/_kss3187.jpg"}
  @{cat="karbonader"; name="kjottkaker-handstekte"; url="$baseUrl/4eapnfkh/kjoettkake-haandstekt-hvit-liten.png"}
  @{cat="karbonader"; name="medisterkaker"; url="$baseUrl/rbbd2pfi/medisterkaker-fpk-hvit-small.png"}
  @{cat="karbonader"; name="leverkaker"; url="$baseUrl/qiajuezb/leverkake-270gr-liten.jpg"}

  # Polser
  @{cat="polser"; name="grillpolser"; url="$baseUrl/w1ibexld/_kss3000.jpg"}
  @{cat="polser"; name="lokpolser"; url="$baseUrl/svonxro5/7071341002452_a1n1_2400px.jpg"}
  @{cat="polser"; name="sjefspolsa"; url="$baseUrl/1vvpgpxw/7071341002568_a1n1_2400px.jpg"}
  @{cat="polser"; name="wienerpolser"; url="$baseUrl/hgjevwgl/7071341002483_a1n1_2400px.jpg"}
  @{cat="polser"; name="rokte-kjottpolser"; url="$baseUrl/diwmy0fv/_kss3230.jpg"}
  @{cat="polser"; name="tasty-lady"; url="$baseUrl/cjohhrer/7071341003800_a1n1_2400px.jpg"}
  @{cat="polser"; name="baconpolser"; url="$baseUrl/qukdl0w1/7071341003770_a1n1_2400px.jpg"}
  @{cat="polser"; name="krakower"; url="$baseUrl/wipi2y4x/_kss3275.jpg"}

  # Kjottdeig
  @{cat="kjottdeig"; name="kjottdeig-storfe"; url="$baseUrl/g2nmigcx/_kss4596.jpg"}
  @{cat="kjottdeig"; name="karbonadedeig"; url="$baseUrl/j0wn3rjj/_kss0517.jpg"}
  @{cat="kjottdeig"; name="kjottdeig-svin"; url="$baseUrl/xape4wvn/_kss0520.jpg"}
  @{cat="kjottdeig"; name="kjottdeig-svin-storfe"; url="$baseUrl/gochks1s/_kss0523.jpg"}
  @{cat="kjottdeig"; name="medisterfarse"; url="$baseUrl/twvderyn/_kss4612.jpg"}
  @{cat="kjottdeig"; name="hamburger"; url="$baseUrl/f1rntsnz/_kss3317.jpg"}

  # Svin
  @{cat="svin"; name="tynnribbe"; url="$baseUrl/hmjhunu0/4183778-tynnribbe-rutet-og-knekt-fersk.jpg"}
  @{cat="svin"; name="nakkekoteletter"; url="$baseUrl/t4lbgh1b/_kss3852.jpg"}
  @{cat="svin"; name="svin-indrefilet"; url="$baseUrl/f2wpazmm/_kss3709.jpg"}
  @{cat="svin"; name="spareribs"; url="$baseUrl/egofyt1n/_kss3752.jpg"}
  @{cat="svin"; name="skinkestek"; url="$baseUrl/luae1dtn/_kss3616.jpg"}
  @{cat="svin"; name="svinekoteletter"; url="$baseUrl/kobkl4rh/_kss3663.jpg"}
  @{cat="svin"; name="svinenakke"; url="$baseUrl/40zl4fky/_kss3589.jpg"}

  # Spekemat
  @{cat="spekemat"; name="fenalar"; url="$baseUrl/kr0lfdeh/_kss4079.jpg"}
  @{cat="spekemat"; name="fenalar-skaret"; url="$baseUrl/wsfdqkbd/_kss4549.jpg"}
  @{cat="spekemat"; name="morpolse"; url="$baseUrl/ycnlhpuf/_kss4073.jpg"}
  @{cat="spekemat"; name="rodvinsalami"; url="$baseUrl/tk4ixxvo/_kss4047.jpg"}
  @{cat="spekemat"; name="spekeskinke"; url="$baseUrl/312nspud/_kss4148.jpg"}
  @{cat="spekemat"; name="trollkall"; url="$baseUrl/3qglkqn0/7071341002780_a1n1_2400px.jpg"}
  @{cat="spekemat"; name="ulvehyl"; url="$baseUrl/5espmpgd/7071341002773_a1n1_2400px.jpg"}

  # Grill
  @{cat="grill"; name="sommerkoteletter-marinerte"; url="$baseUrl/xarg3vqp/2371564300003_a1n1_2400px.jpg"}
  @{cat="grill"; name="grillribbe"; url="$baseUrl/zlcfq0re/_kss3771.jpg"}
  @{cat="grill"; name="festivalburger"; url="$baseUrl/rk1khk0a/_kss5194.jpg"}
  @{cat="grill"; name="pattegris"; url="$baseUrl/ninoqb4z/pattegris.png"}
  @{cat="grill"; name="rodeopolser"; url="$baseUrl/fozlj2rh/_kss3117.jpg"}
  @{cat="grill"; name="grillgris"; url="$baseUrl/zy5ntfn5/_kss0613.jpg"}
  @{cat="grill"; name="grillben"; url="$baseUrl/1ptgjc4t/_kss3759.jpg"}
)

$ok = 0; $fail = 0
foreach ($it in $items) {
  $ext = [System.IO.Path]::GetExtension($it.url)
  $out = "$base\$($it.cat)\$($it.name)$ext"
  try {
    Invoke-WebRequest -Uri $it.url -OutFile $out -UseBasicParsing -ErrorAction Stop
    $ok++
  } catch {
    Write-Host "FAIL: $($it.url)"
    $fail++
  }
}
Write-Host "Downloaded $ok, failed $fail"
