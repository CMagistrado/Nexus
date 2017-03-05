# 
# Name:			clingy.sh
# Description:	Creates a file of potential dependencies after a working version of your applicationn is finished
#
#

if [ "$USER" == "root" ]
then
	grep -E '(git clone|apt-get install|curl|wget)' /root/.bash_history > potential_dependencies.sh
	chmod u+x potential_dependencies.sh
else
	grep -E '(git clone|apt-get install|curl|wget)' /home/$USER/.bash_history > potential_dependencies.sh
	chmod u+x potential_dependencies.sh
fi

#chmod u+x potential_dependencies.sh $USER
