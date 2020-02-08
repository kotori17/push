sudo apt update
sudo apt install -y git

# Export
export api_key
export username="rzkl"
export email="rzkl@mail.com"
export repo="platform_system_bt"
export repo1=https://$(echo $username):$(echo $api_key)@github.com/rzkl/$repo.git
export repo2=https://android.googlesource.com/platform/system/bt
export branch1=android-9.0.0_r53
export branch2=android-9.0.0_r53
git config --global user.name $username
git config --global user.email $email
mkdir clone
cd clone
git init
git remote add fetch $repo2
git remote add origin $repo1
git checkout -b $branch1
git pull fetch $branch2
#git fetch fetch $branch1
#git cherry-pick 336d54d5c8bee7c8ca2ea74488f99e9f3e58d65c b97ed13a90463aae6e116d56d2f9023f201e4ceb 9bcc8b85c51fd0b838d83ab71f758fa9a64028fc 5d8df133d8431b0a582d89cd2c3ea9d9fa5b2b29 b78c3b57160004c54144228275626775e72beed5 87bad57ae9d956ede96fc7cc0c4937e8b6f92157 549bf2a78e248913555ac0ae5f6be1b1c6f5587b --signoff
git push -u -f origin $branch1
