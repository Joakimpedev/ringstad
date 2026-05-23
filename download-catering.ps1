$ErrorActionPreference = "Continue"
$base = "C:\Users\User\Claudecode\bedriftapper\brringstad\assets"
$baseUrl = "https://www.brodr-ringstad.no/media"
New-Item -ItemType Directory -Force -Path "$base\catering" | Out-Null
New-Item -ItemType Directory -Force -Path "$base\grill" | Out-Null

$items = @(
  # Catering
  @{cat="catering"; name="snitter"; url="$baseUrl/bddlfh3u/snitter-3.jpg"}
  @{cat="catering"; name="koldtbord-1"; url="$baseUrl/24jmovlj/panorama_ringstad_0825_3318.jpg"}
  @{cat="catering"; name="tapas"; url="$baseUrl/3zbpz1j3/panorama_ringstad_0825_2692.jpg"}
  @{cat="catering"; name="dessert"; url="$baseUrl/duefvsul/panorama_ringstad_0825_3234.jpg"}
  @{cat="catering"; name="forretter"; url="$baseUrl/n31g5z1o/panorama_ringstad_0825_3267.jpg"}
  @{cat="catering"; name="middag"; url="$baseUrl/fvadxyjb/panorama_ringstad_0825_3304.jpg"}
  @{cat="catering"; name="gryterett"; url="$baseUrl/xq4pifsn/panorama_ringstad_0825_3289.jpg"}
  @{cat="catering"; name="koldtbord-2"; url="$baseUrl/05jm4vo3/panorama_ringstad_0825_3334.jpg"}
  @{cat="catering"; name="spekemat"; url="$baseUrl/0s5bfovw/panorama_ringstad_0825_2710.jpg"}
  @{cat="catering"; name="baguette"; url="$baseUrl/amvphd3e/panorama_ringstad_0825_2694.jpg"}
  @{cat="catering"; name="bedrift"; url="$baseUrl/hbcjoxej/panorama_ringstad_0825_2735.jpg"}
  @{cat="catering"; name="anne-grethe"; url="$baseUrl/ashppoge/panorama_ringstad_0825_3203.jpg"}

  # Grill
  @{cat="grill"; name="grill-event"; url="$baseUrl/a1gdc2fg/grillevent-servering.jpg"}
  @{cat="grill"; name="helstekt-gris"; url="$baseUrl/wwymcibz/161.jpg"}
  @{cat="grill"; name="grilltallerken"; url="$baseUrl/3nidwuhg/165.jpg"}
  @{cat="grill"; name="grillmat-1"; url="$baseUrl/tenmyxvf/171.jpg"}
  @{cat="grill"; name="grillmat-2"; url="$baseUrl/31enab4g/168.jpg"}
  @{cat="grill"; name="grillmat-3"; url="$baseUrl/tvketc3o/175.jpg"}
  @{cat="grill"; name="steak-gaffel"; url="$baseUrl/gjiehckc/steak-gaffel.jpg"}
  @{cat="grill"; name="fest"; url="$baseUrl/g1qdhhrx/fest.jpg"}
  @{cat="grill"; name="paa-grillen"; url="$baseUrl/z5gjvdtl/paa-grillen.jpg"}
  @{cat="grill"; name="grill-action"; url="$baseUrl/dxhb341v/20250705_143539187_ios.jpg"}
  @{cat="grill"; name="grill-serv"; url="$baseUrl/okln35zu/20250705_140554583_ios.jpg"}
  @{cat="grill"; name="grill-koldt"; url="$baseUrl/c1mpv4r4/20240824_142320402_ios.jpg"}
)

$ok=0; $fail=0
foreach ($it in $items) {
  $ext = [System.IO.Path]::GetExtension($it.url)
  $out = "$base\$($it.cat)\$($it.name)$ext"
  try {
    Invoke-WebRequest -Uri $it.url -OutFile $out -UseBasicParsing -ErrorAction Stop
    $ok++
  } catch { Write-Host "FAIL: $($it.url)"; $fail++ }
}
Write-Host "Downloaded $ok, failed $fail"
