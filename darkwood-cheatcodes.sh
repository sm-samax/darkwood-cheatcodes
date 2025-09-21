jq="$(pwd)/jq.exe";

user=$(whoami);

echo "Enter the number of profile (1-5):";

read profile;

static_codes=$(cat ./static-codes.json);

cd "C:/Users/${user}/AppData/LocalLow/Acid Wizard Studio/Darkwood/prof${profile}";

echo $static_codes > codes;

$jq '.numS.numbers' sav.dat >> codes;

notepad ./codes;

rm ./codes;