#!/usr/bin/env bash

CURLBIN="`which curl`";

if [ "${CURLBIN}" == "" ]; then
    echo "curl not found";
    echo "Please install curl to proceed with downloading data";
    echo;
    echo "On Mac (with HomeBrew):";
    echo "brew install curl";
    echo;
    echo "On Ubuntu Linux (with APT):";
    echo "apt install curl";
    echo;
    echo "On CentOS Linux (with YUM):";
    echo "yum install curl";
    exit 1;
fi

function download() {
    host="$1";
    dir="$2";
    file="$3";
    qp="$4";
    ca="$5";
    if [ ! -d ".${dir}" ]; then
        mkdir ".${dir}"
    fi
    echo "Donwloading: .${dir}/${file}"
    "${CURLBIN}" --cookie cookies.txt --header "Host: ${host}"  --header "accept-encoding: gzip, deflate"  --header "pragma: no-cache" --header "cache-control: no-cache" --header "accept: */*" --header "dnt: 1" --header "user-agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36" --header "referer: https://${host}/" --header "accept-language: en-US,en;q=0.9" --compressed -L "https://${host}${dir}/${file}${qp}" --output ".${dir}/${file}";
}

"${CURLBIN}" --cookie-jar cookies.txt "earth.nullschool.net" > /dev/null 2>&1;

download "earth.nullschool.net" "/data"                   "earth-topo-mobile.json"
download "earth.nullschool.net" "/data"                   "earth-topo.json"
download "gaia.nullschool.net"  "/data/cams/current"      "current-pm1-cams.epak"
download "gaia.nullschool.net"  "/data/cams/current"      "current-pm10-cams.epak"
download "gaia.nullschool.net"  "/data/cams/current"      "current-pm2p5-cams.epak"
download "gaia.nullschool.net"  "/data/geos/current"      "current-co2sc-geos.epak"
download "gaia.nullschool.net"  "/data/geos/current"      "current-cosc-geos.epak"
download "gaia.nullschool.net"  "/data/geos/current"      "current-duexttau-geos.epak"
download "gaia.nullschool.net"  "/data/geos/current"      "current-so2smass-geos.epak"
download "gaia.nullschool.net"  "/data/geos/current"      "current-suexttau-geos.epak"
download "gaia.nullschool.net"  "/data/gfs/current"       "current-air_density-isobaric-10hPa-gfs-0.25.epak"
download "gaia.nullschool.net"  "/data/gfs/current"       "current-cape-gfs-0.25.epak"
download "gaia.nullschool.net"  "/data/gfs/current"       "current-cape-gfs-0.5.epak"
download "gaia.nullschool.net"  "/data/gfs/current"       "current-mean_sea_level_pressure-gfs-0.25.epak"
download "gaia.nullschool.net"  "/data/gfs/current"       "current-mean_sea_level_pressure-gfs-0.5.epak"
download "gaia.nullschool.net"  "/data/gfs/current"       "current-misery_index-gfs-0.25.epak"
download "gaia.nullschool.net"  "/data/gfs/current"       "current-misery_index-gfs-0.5.epak"
download "gaia.nullschool.net"  "/data/gfs/current"       "current-precip_3hr-gfs-0.25.epak"
download "gaia.nullschool.net"  "/data/gfs/current"       "current-precip_3hr-gfs-0.5.epak"
download "gaia.nullschool.net"  "/data/gfs/current"       "current-relative_humidity-isobaric-10hPa-gfs-0.25.epak"
download "gaia.nullschool.net"  "/data/gfs/current"       "current-relative_humidity-surface-level-gfs-0.5.epak"
download "gaia.nullschool.net"  "/data/gfs/current"       "current-temp-isobaric-10hPa-gfs-0.25.epak"
download "gaia.nullschool.net"  "/data/gfs/current"       "current-temp-surface-level-gfs-0.5.epak"
download "gaia.nullschool.net"  "/data/gfs/current"       "current-total_cloud_water-gfs-0.25.epak"
download "gaia.nullschool.net"  "/data/gfs/current"       "current-total_cloud_water-gfs-0.5.epak"
download "gaia.nullschool.net"  "/data/gfs/current"       "current-total_precipitable_water-gfs-0.25.epak"
download "gaia.nullschool.net"  "/data/gfs/current"       "current-total_precipitable_water-gfs-0.5.epak"
download "gaia.nullschool.net"  "/data/gfs/current"       "current-wind-isobaric-1000hPa-gfs-0.5.epak"
download "gaia.nullschool.net"  "/data/gfs/current"       "current-wind-isobaric-10hPa-gfs-0.25.epak"
download "gaia.nullschool.net"  "/data/gfs/current"       "current-wind-isobaric-10hPa-gfs-0.5.epak"
download "gaia.nullschool.net"  "/data/gfs/current"       "current-wind-isobaric-250hPa-gfs-0.25.epak"
download "gaia.nullschool.net"  "/data/gfs/current"       "current-wind-isobaric-250hPa-gfs-0.5.epak"
download "gaia.nullschool.net"  "/data/gfs/current"       "current-wind-isobaric-500hPa-gfs-0.25.epak"
download "gaia.nullschool.net"  "/data/gfs/current"       "current-wind-isobaric-500hPa-gfs-0.5.epak"
download "gaia.nullschool.net"  "/data/gfs/current"       "current-wind-isobaric-700hPa-gfs-0.25.epak"
download "gaia.nullschool.net"  "/data/gfs/current"       "current-wind-isobaric-700hPa-gfs-0.5.epak"
download "gaia.nullschool.net"  "/data/gfs/current"       "current-wind-isobaric-70hPa-gfs-0.25.epak"
download "gaia.nullschool.net"  "/data/gfs/current"       "current-wind-isobaric-70hPa-gfs-0.5.epak"
download "gaia.nullschool.net"  "/data/gfs/current"       "current-wind-isobaric-850hPa-gfs-0.25.epak"
download "gaia.nullschool.net"  "/data/gfs/current"       "current-wind-isobaric-850hPa-gfs-0.5.epak"
download "gaia.nullschool.net"  "/data/gfs/current"       "current-wind-surface-level-gfs-0.25.epak"
download "gaia.nullschool.net"  "/data/gfs/current"       "current-wind-surface-level-gfs-0.5.epak"
download "gaia.nullschool.net"  "/data/ovation/current"   "current-ovation.json"
download "gaia.nullschool.net"  "/data/rtgsst/current"    "current-sea_surface_temp-rtg-0.5.epak"
download "gaia.nullschool.net"  "/data/rtgsst/current"    "current-sea_surface_temp_anomaly-rtg-0.5.epak"
download "gaia.nullschool.net"  "/data/ww3/current"       "current-primary-wave-30m.epak"

download "gaia.nullschool.net"  "/data/oscar"             "oscar-catalog.json"
for o in `cat ./data/oscar/oscar-catalog.json | sed 's/"/ /g' | sed 's/\[//g' | sed 's/\]//g' | sed 's/,//g'`; do
    download "gaia.nullschool.net" "/data/oscar" "$o";
done

download "gaia.nullschool.net"  "/data/ww3/current"       "current-sig_height-wave-30m.epak"
download "gaia.nullschool.net"  "/data/gfs/current"       "current-wind-isobaric-1000hPa-gfs-0.25.epak"
download "gaia.nullschool.net"  "/data/gfs/current"       "current-primary-wave-30m.epak"
download "gaia.nullschool.net"  "/data/gfs/current"       "current-sig_height-wave-30m.epak"

function copy-data() {
    lang="$1";
    echo "Copying ./data/ to ./${lang}/";
    cp -r "./data/" "./${lang}/";
}

copy-data cs;
copy-data fr;
copy-data jp;
copy-data pt;
copy-data ru;
copy-data zh-cn;

echo "Download complete.";
exit 0;
