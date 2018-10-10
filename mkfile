
results/%.sif: data/%.adj
	mkdir -p `dirname $target`
	python bin/adj2sif.py \
		$prereq \
		> $target".build" \
	&& mv $target".build" $target
