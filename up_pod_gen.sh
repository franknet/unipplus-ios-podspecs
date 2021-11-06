name=""
desc=""

execute() {
	# CREATE POD DIRECTORY
	mkdir $name
	mkdir $name/Classes
	mkdir $name/Assets

	echo "" >> $name/Classes/replace-me.swift

	# CREATE PODSPEC 

	echo "Pod::Spec.new do |spec|" >> $name.podspec
	echo "	spec.name                 = \"$name\"" >> $name.podspec
	echo "	spec.version              = \"0.1.0\"" >> $name.podspec
	echo "	spec.summary              = \"$name\"" >> $name.podspec
	echo "	spec.description          = \"$desc\"" >> $name.podspec
	echo "	spec.homepage             = \"https://github.com/franknet/unipplus-ios-podspecs.git\"" >> $name.podspec
	echo "	spec.license              = \"MIT\"" >> $name.podspec
	echo "	spec.author               = { \"Jossé Franklin\" => \"franklinsilvaalves@gmail.com\" }" >> $name.podspec
	echo "	spec.platform             = :ios, \"12.0\"" >> $name.podspec
	echo "	spec.swift_version        = \"5.5\"" >> $name.podspec
	echo "	spec.source               = { :git => \"https://github.com/franknet/unipplus-ios-podspecs.git\", :tag => \"$name-v#{spec.version}\" }" >> $name.podspec
	echo "	spec.source_files         = \"$name/Classes/**/*\"" >> $name.podspec
	echo "	spec.resources            = \"$name/Assets/*\"" >> $name.podspec
	echo "	spec.resource_bundle      = { \"$name\" => [ \"$name/Assets/*\" ] }" >> $name.podspec
	echo "	spec.info_plist 		  = { \"CFBundleIdentifier\" => \"br.com.mobileclass.$name\" }" >> $name.podspec
	echo "end" >> $name.podspec
}

check() {
	if [[ -n $name ]] && [[ -n $desc ]]; then
		execute
	fi
}

while getopts "n:d:" flag; do
	case $flag in
    	n) name=$OPTARG ;;
        d) desc=$OPTARG ;;
        *) exit 1 ;;
    esac
    check
done