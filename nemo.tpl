%include('header',title='confirm')
<head>
<meta name='viewport' content='width=device-width, initial-scale=1, maximum-scale=1'>
</head>
<body>
%include('navbar')
%include('apps/alert')
<div class="container-fluid">
<form class="form-horizontal" action="/confirm" method="post" novalidate>
<input type="hidden" name="app" value="{{app}}">
%if defined('cid'):
<input type="hidden" name="cid" value="{{cid}}">
%end

<a href="/static/apps/nemo/Nemo2-manual.pdf" class="help btn btn-info" target="status"><span class="glyphicon glyphicon-question-sign"></span></a>

<div class="col-xs-12" style="height:5px"></div>
<div class="col-xs-12 visible-xs" style="height:5px"></div>
<div class="form-group">
	<div class="col-xs-2">
		<button type="submit" class="btn btn-success"> <!-- pull-right -->
		Continue <em class="glyphicon glyphicon-forward"></em> </button>
	</div>
	<label for="desc" style="text-align:right" class="control-label col-sm-4 hidden-xs">
		<a href="#" data-toggle="tooltip" title="Separate labels by commas">Labels:</a></label>
	<div class="hidden-xs col-sm-6">
		<input type="text" id="desc" name="desc" class="form-control" style="width:100%"
			data-role="tagsinput" title="e.g. v2.5.1,bottleneck">
	</div>
</div>
<div class="col-xs-12" style="height:5px"></div>
<ul class="nav nav-pills" role="tablist">
	<li role="presentation">
		<a href="#SIMULATION" aria-controls="home" role="tab" data-toggle="tab">SIMULATION</a>
	</li>
	<li role="presentation">
		<a href="#POPULATION" aria-controls="home" role="tab" data-toggle="tab">POPULATION</a>
	</li>
	<li role="presentation">
		<a href="#LIFE_CYCLE_EVENTS" aria-controls="home" role="tab" data-toggle="tab">LIFE CYCLE EVENTS</a>
	</li>
	<li role="presentation">
		<a href="#MATING_SYSTEM" aria-controls="home" role="tab" data-toggle="tab">MATING SYSTEM</a>
	</li>
	<li role="presentation">
		<a href="#DISPERSAL_LCE" aria-controls="home" role="tab" data-toggle="tab">DISPERSAL LCE</a>
	</li>
	<li role="presentation">
		<a href="#OUTPUT" aria-controls="home" role="tab" data-toggle="tab">OUTPUT</a>
	</li>
	<li role="presentation">
		<a href="#LCE" aria-controls="home" role="tab" data-toggle="tab">LCE</a>
	</li>
	<li role="presentation">
		<a href="#NEUTRAL_MARKERS" aria-controls="home" role="tab" data-toggle="tab">NEUTRAL MARKERS</a>
	</li>
	<li role="presentation">
		<a href="#GENETIC_LOAD" aria-controls="home" role="tab" data-toggle="tab">GENETIC LOAD</a>
	</li>
	<li role="presentation">
		<a href="#FITNESS_MODELS" aria-controls="home" role="tab" data-toggle="tab">FITNESS MODELS</a>
	</li>
	<li role="presentation">
		<a href="#DISPERSAL_TRAIT" aria-controls="home" role="tab" data-toggle="tab">DISPERSAL TRAIT</a>
	</li>
</ul>
<div class="tab-content">
<div role="tabpanel" class="tab-pane fade in active" id="SIMULATION">
	<div class="form-group">
		<label for="logfile" class="control-label col-xs-6">
			logfile:</label>
		<div class="col-xs-12 col-sm-6">
			<input type="text" class="form-control" name="logfile" value="{{logfile}}"/>
		</div>
	</div>
	<div class="form-group">
		<label for="run_mode" class="control-label col-xs-6">
			run_mode:</label>
		<div class="col-xs-12 col-sm-6">
			<select class="form-control" name="run_mode">
			%opts = {'run': 'run', 'dryrun': 'dryrun', 'overwrite': 'overwrite', 'skip': 'skip'}
			%for key, value in opts.iteritems():
				%if key == run_mode:
					<option selected value="{{key}}">{{value}}</option>
				%else:
					<option value="{{key}}">{{value}}</option>
				%end
			%end
			</select>
		</div>
	</div>
	<div class="form-group">
		<label for="random_seed" class="control-label col-xs-6">
			random_seed:</label>
		<div class="col-xs-12 col-sm-6">
			<input type="number" class="form-control" name="random_seed" value="{{random_seed}}"/>
		</div>
	</div>
	<div class="form-group">
		<label for="root_dir" class="control-label col-xs-6">
			root_dir:</label>
		<div class="col-xs-12 col-sm-6">
			<input type="text" class="form-control" name="root_dir" value="{{root_dir}}"/>
		</div>
	</div>
	<div class="form-group">
		<label for="replicates" class="control-label col-xs-6">
			replicates:</label>
		<div class="col-xs-12 col-sm-6">
			<input type="number" class="form-control" name="replicates" value="{{replicates}}"/>
		</div>
	</div>
	<div class="form-group">
		<label for="generations" class="control-label col-xs-6">
			generations:</label>
		<div class="col-xs-12 col-sm-6">
			<input type="number" class="form-control" name="generations" value="{{generations}}"/>
		</div>
	</div>
	<div class="form-group">
		<label for="filename" class="control-label col-xs-6">
			filename:</label>
		<div class="col-xs-12 col-sm-6">
			<input type="text" class="form-control" name="filename" value="{{filename}}"/>
		</div>
	</div>
</div>

<div role="tabpanel" class="tab-pane fade in inactive" id="POPULATION">
	<div class="form-group">
		<label for="patch_number" class="control-label col-xs-6">
			patch_number:</label>
		<div class="col-xs-12 col-sm-6">
			<input type="number" class="form-control" name="patch_number" value="{{patch_number}}"/>
		</div>
	</div>
	<div class="form-group">
		<label for="patch_capacity" class="control-label col-xs-6">
			patch_capacity:</label>
		<div class="col-xs-12 col-sm-6">
			<input type="number" class="form-control" name="patch_capacity" value="{{patch_capacity}}"/>
		</div>
	</div>
</div>

<div role="tabpanel" class="tab-pane fade in inactive" id="LIFE_CYCLE_EVENTS">
	<div class="form-group">
		<label for="breed_selection" class="control-label col-xs-6">
			breed_selection:</label>
		<div class="col-xs-12 col-sm-6">
			<input type="number" class="form-control" name="breed_selection" value="{{breed_selection}}"/>
		</div>
	</div>
	<div class="form-group">
		<label for="save_stats" class="control-label col-xs-6">
			save_stats:</label>
		<div class="col-xs-12 col-sm-6">
			<input type="number" class="form-control" name="save_stats" value="{{save_stats}}"/>
		</div>
	</div>
	<div class="form-group">
		<label for="disperse_evoldisp" class="control-label col-xs-6">
			disperse_evoldisp:</label>
		<div class="col-xs-12 col-sm-6">
			<input type="number" class="form-control" name="disperse_evoldisp" value="{{disperse_evoldisp}}"/>
		</div>
	</div>
	<div class="form-group">
		<label for="aging" class="control-label col-xs-6">
			aging:</label>
		<div class="col-xs-12 col-sm-6">
			<input type="number" class="form-control" name="aging" value="{{aging}}"/>
		</div>
	</div>
	<div class="form-group">
		<label for="save_files" class="control-label col-xs-6">
			save_files:</label>
		<div class="col-xs-12 col-sm-6">
			<input type="number" class="form-control" name="save_files" value="{{save_files}}"/>
		</div>
	</div>
	<div class="form-group">
		<label for="store" class="control-label col-xs-6">
			store:</label>
		<div class="col-xs-12 col-sm-6">
			<input type="number" class="form-control" name="store" value="{{store}}"/>
		</div>
	</div>
	<div class="form-group">
		<label for="extinction" class="control-label col-xs-6">
			extinction:</label>
		<div class="col-xs-12 col-sm-6">
			<input type="number" class="form-control" name="extinction" value="{{extinction}}"/>
		</div>
	</div>
	<div class="form-group">
		<label for="selection_trait" class="control-label col-xs-6">
			selection_trait:</label>
		<div class="col-xs-12 col-sm-6">
			<select class="form-control" name="selection_trait">
			%opts = {'wolb': 'Wolbachia endosymbiotic parasites', 'fdisp': 'female-specific dispersal', 'mdisp': 'male-specific dispersal', 'ntrl': 'neutral markers', 'delet': 'deleterious', 'quant': 'quantitative'}
			%for key, value in opts.iteritems():
				%if key == selection_trait:
					<option selected value="{{key}}">{{value}}</option>
				%else:
					<option value="{{key}}">{{value}}</option>
				%end
			%end
			</select>
		</div>
	</div>
	<div class="form-group">
		<label for="selection_model" class="control-label col-xs-6">
			selection_model:</label>
		<div class="col-xs-12 col-sm-6">
			<select class="form-control" name="selection_model">
			%opts = {'fix': 'fix - fitness set by pedigree', 'direct': 'direct (default) - fitness set by phenotype', 'guassian': 'gaussian - stabilize selection on a set of quantitative traits'}
			%for key, value in opts.iteritems():
				%if key == selection_model:
					<option selected value="{{key}}">{{value}}</option>
				%else:
					<option value="{{key}}">{{value}}</option>
				%end
			%end
			</select>
		</div>
	</div>
	<div class="form-group">
		<label for="extinction_rate" class="control-label col-xs-6">
			extinction_rate:</label>
		<div class="col-xs-12 col-sm-6">
			<input type="number" class="form-control" name="extinction_rate" value="{{extinction_rate}}"/>
		</div>
	</div>
</div>

<div role="tabpanel" class="tab-pane fade in inactive" id="MATING_SYSTEM">
	<div class="form-group">
		<label for="mating_system" class="control-label col-xs-6">
			mating_system:</label>
		<div class="col-xs-12 col-sm-6">
			<select class="form-control" name="mating_system">
            % o = ['invalid option', 'promiscuity/random mating', 'polygyny', 'monogamy', 'selfing/hermaphrodite', 'cloning', 'random mating with selfing (Wright-Fisher)']
			%opts={1: o[1], 2: o[2], 3: o[3], 4: o[4], 5: o[5], 6: o[6]}
			%for key, value in opts.iteritems():
				%if key == int(mating_system):
					<option selected value="{{key}}">{{value}}</option>
				%else:
					<option value="{{key}}">{{value}}</option>
				%end
			%end
			</select>
		</div>
	</div>
	<div class="form-group">
		<label for="mean_fecundity" class="control-label col-xs-6">
			mean_fecundity:</label>
		<div class="col-xs-12 col-sm-6">
			<input type="number" class="form-control" name="mean_fecundity" value="{{mean_fecundity}}"/>
		</div>
	</div>
	<div class="form-group">
		<label for="mating_proportion" class="control-label col-xs-6">
			mating_proportion:</label>
		<div class="col-xs-12 col-sm-6">
			<input type="number" class="form-control" name="mating_proportion" value="{{mating_proportion}}"/>
		</div>
	</div>
</div>

<div role="tabpanel" class="tab-pane fade in inactive" id="DISPERSAL_LCE">
	<div class="form-group">
		<label for="dispersal_model" class="control-label col-xs-6">
			dispersal_model:</label>
		<div class="col-xs-12 col-sm-6">
			<select class="form-control" name="dispersal_model">
            %o = ['invalid', 'Island Model Migrant Pool', 'Stepping Stone Model 1D', 'Island Model Propagule Pool', 'Lattice Model']
			%opts = {1: o[1], 2: o[2], 3: o[3], 4: o[4]}
			%for key, value in opts.iteritems():
				%if key == int(dispersal_model):
					<option selected value="{{key}}">{{value}}</option>
				%else:
					<option value="{{key}}">{{value}}</option>
				%end
			%end
			</select>
		</div>
	</div>
	<div class="form-group">
		<label for="dispersal_cost" class="control-label col-xs-6">
			dispersal_cost:</label>
		<div class="col-xs-12 col-sm-6">
			<input type="text" class="form-control" name="dispersal_cost" value="{{dispersal_cost}}"/>
		</div>
	</div>
</div>

<div role="tabpanel" class="tab-pane fade in inactive" id="OUTPUT">
	<div class="form-group">
		<label for="stat_log_time" class="control-label col-xs-6">
			stat_log_time:</label>
		<div class="col-xs-12 col-sm-6">
			<input type="number" class="form-control" name="stat_log_time" value="{{stat_log_time}}"/>
		</div>
	</div>
	<div class="form-group">
		<label for="stat_dir" class="control-label col-xs-6">
			stat_dir:</label>
		<div class="col-xs-12 col-sm-6">
			<input type="text" class="form-control" name="stat_dir" value="{{stat_dir}}"/>
		</div>
	</div>
	<div class="form-group">
		<label for="ntrl_save_freq" class="control-label col-xs-6">
			ntrl_save_freq:</label>
		<div class="col-xs-12 col-sm-6">
			<input type="text" class="form-control" name="ntrl_save_freq" value="{{ntrl_save_freq}}"/>
		</div>
	</div>
	<div class="form-group">
		<label for="ntrl_output_dir" class="control-label col-xs-6">
			ntrl_output_dir:</label>
		<div class="col-xs-12 col-sm-6">
			<input type="text" class="form-control" name="ntrl_output_dir" value="{{ntrl_output_dir}}"/>
		</div>
	</div>
	<div class="form-group">
		<label for="ntrl_output_logtime" class="control-label col-xs-6">
			ntrl_output_logtime:</label>
		<div class="col-xs-12 col-sm-6">
			<input type="number" class="form-control" name="ntrl_output_logtime" value="{{ntrl_output_logtime}}"/>
		</div>
	</div>
</div>

<div role="tabpanel" class="tab-pane fade in inactive" id="LCE">
	<div class="form-group">
		<label for="store_dir" class="control-label col-xs-6">
			store_dir:</label>
		<div class="col-xs-12 col-sm-6">
			<input type="text" class="form-control" name="store_dir" value="{{store_dir}}"/>
		</div>
	</div>
	<div class="form-group">
		<label for="store_generation" class="control-label col-xs-6">
			store_generation:</label>
		<div class="col-xs-12 col-sm-6">
			<input type="number" class="form-control" name="store_generation" value="{{store_generation}}"/>
		</div>
	</div>
</div>

<div role="tabpanel" class="tab-pane fade in inactive" id="NEUTRAL_MARKERS">
	<div class="form-group">
		<label for="ntrl_loci" class="control-label col-xs-6">
			ntrl_loci:</label>
		<div class="col-xs-12 col-sm-6">
			<input type="number" class="form-control" name="ntrl_loci" value="{{ntrl_loci}}"/>
		</div>
	</div>
	<div class="form-group">
		<label for="ntrl_all" class="control-label col-xs-6">
			ntrl_all:</label>
		<div class="col-xs-12 col-sm-6">
			<input type="number" class="form-control" name="ntrl_all" value="{{ntrl_all}}"/>
		</div>
	</div>
	<div class="form-group">
		<label for="ntrl_mutation_rate" class="control-label col-xs-6">
			ntrl_mutation_rate:</label>
		<div class="col-xs-12 col-sm-6">
			<input type="number" class="form-control" name="ntrl_mutation_rate" value="{{ntrl_mutation_rate}}"/>
		</div>
	</div>
	<div class="form-group">
		<label for="ntrl_recombination_rate" class="control-label col-xs-6">
			ntrl_recombination_rate:</label>
		<div class="col-xs-12 col-sm-6">
			<input type="number" class="form-control" name="ntrl_recombination_rate" value="{{ntrl_recombination_rate}}"/>
		</div>
	</div>
	<div class="form-group">
		<label for="ntrl_mutation_model" class="control-label col-xs-6">
			ntrl_mutation_model:</label>
		<div class="col-xs-12 col-sm-6">
			<select class="form-control" name="ntrl_mutation_model">
            %mutn_opts = ['no mutations', 'SSM (Single Step Mutation)', 'KAM (K-Allele Model)' ]
			%opts = {0: mutn_opts[0], 1: mutn_opts[1], 2: mutn_opts[2]}
			%for key, value in opts.iteritems():
				%if key == int(ntrl_mutation_model):
					<option selected value="{{key}}">{{value}}</option>
				%else:
					<option value="{{key}}">{{value}}</option>
				%end
			%end
			</select>
		</div>
	</div>
</div>

<div role="tabpanel" class="tab-pane fade in inactive" id="GENETIC_LOAD">
	<div class="form-group">
		<label for="delet_loci" class="control-label col-xs-6">
			delet_loci:</label>
		<div class="col-xs-12 col-sm-6">
			<input type="number" class="form-control" name="delet_loci" value="{{delet_loci}}"/>
		</div>
	</div>
	<div class="form-group">
		<label for="delet_init_freq" class="control-label col-xs-6">
			delet_init_freq:</label>
		<div class="col-xs-12 col-sm-6">
			<input type="number" class="form-control" name="delet_init_freq" value="{{delet_init_freq}}"/>
		</div>
	</div>
	<div class="form-group">
		<label for="delet_mutation_rate" class="control-label col-xs-6">
			delet_mutation_rate:</label>
		<div class="col-xs-12 col-sm-6">
			<input type="number" class="form-control" name="delet_mutation_rate" value="{{delet_mutation_rate}}"/>
		</div>
	</div>
	<div class="form-group">
		<label for="delet_mutation_model" class="control-label col-xs-6">
			delet_mutation_model: </label>
		<div class="col-xs-12 col-sm-6">
			<select class="form-control" name="delet_mutation_model">
            %mutn_opts = ['no mutations', 'SSM (Single Step Mutation)', 'KAM (K-Allele Model)' ]
			%opts = {0: mutn_opts[0], 1: mutn_opts[1], 2: mutn_opts[2]}
			%for key, value in opts.iteritems():
				%if key == int(delet_mutation_model):
					<option selected value="{{key}}">{{value}}</option>
				%else:
					<option value="{{key}}">{{value}}</option>
				%end
			%end
			</select>
		</div>
	</div>
	<div class="form-group">
		<label for="delet_recombination_rate" class="control-label col-xs-6">
			delet_recombination_rate:</label>
		<div class="col-xs-12 col-sm-6">
			<input type="number" class="form-control" name="delet_recombination_rate" value="{{delet_recombination_rate}}"/>
		</div>
	</div>
	<div class="form-group">
		<label for="delet_effects_mean" class="control-label col-xs-6">
			delet_effects_mean:</label>
		<div class="col-xs-12 col-sm-6">
			<input type="number" class="form-control" name="delet_effects_mean" value="{{delet_effects_mean}}"/>
		</div>
	</div>
	<div class="form-group">
		<label for="delet_dominance_mean" class="control-label col-xs-6">
			delet_dominance_mean:</label>
		<div class="col-xs-12 col-sm-6">
			<input type="number" class="form-control" name="delet_dominance_mean" value="{{delet_dominance_mean}}"/>
		</div>
	</div>
	<div class="form-group">
		<label for="delet_effects_distribution" class="control-label col-xs-6">
			delet_effects_distribution:</label>
		<div class="col-xs-12 col-sm-6">
			<select class="form-control" name="delet_effects_distribution">
			%opts = {'normal': 'normal', 'lognormal': 'lognormal'}
			%for key, value in opts.iteritems():
				%if key == delet_effects_distribution:
					<option selected value="{{key}}">{{value}}</option>
				%else:
					<option value="{{key}}">{{value}}</option>
				%end
			%end
			</select>
		</div>
	</div>
	<div class="form-group">
		<label for="delet_effects_dist_param1" class="control-label col-xs-6">
			delet_effects_dist_param1:</label>
		<div class="col-xs-12 col-sm-6">
			<input type="number" class="form-control" name="delet_effects_dist_param1" value="{{delet_effects_dist_param1}}"/>
		</div>
	</div>
	<div class="form-group">
		<label for="delet_effects_dist_param2" class="control-label col-xs-6">
			delet_effects_dist_param2:</label>
		<div class="col-xs-12 col-sm-6">
			<input type="number" class="form-control" name="delet_effects_dist_param2" value="{{delet_effects_dist_param2}}"/>
		</div>
	</div>
</div>

<div role="tabpanel" class="tab-pane fade in inactive" id="FITNESS_MODELS">
	<div class="form-group">
		<label for="delet_fitness_model" class="control-label col-xs-6">
			delet_fitness_model:</label>
		<div class="col-xs-12 col-sm-6">
			<select class="form-control" name="delet_fitness_model">
			%opts = {1: 'multiplicative', 2: 'additive'}
			%for key, value in opts.iteritems():
				%if key == delet_fitness_model:
					<option selected value="{{key}}">{{value}}</option>
				%else:
					<option value="{{key}}">{{value}}</option>
				%end
			%end
			</select>
		</div>
	</div>
	<div class="form-group">
		<label for="delet_genot_logtime" class="control-label col-xs-6">
			delet_genot_logtime:</label>
		<div class="col-xs-12 col-sm-6">
			<input type="number" class="form-control" name="delet_genot_logtime" value="{{delet_genot_logtime}}"/>
		</div>
	</div>
</div>

<div role="tabpanel" class="tab-pane fade in inactive" id="DISPERSAL_TRAIT">
	<div class="form-group">
		<label for="disp_mutation_rate" class="control-label col-xs-6">
			disp_mutation_rate:</label>
		<div class="col-xs-12 col-sm-6">
			<input type="number" class="form-control" name="disp_mutation_rate" value="{{disp_mutation_rate}}"/>
		</div>
	</div>
	<div class="form-group">
		<label for="disp_mutation_mean" class="control-label col-xs-6">
			disp_mutation_mean:</label>
		<div class="col-xs-12 col-sm-6">
			<input type="number" class="form-control" name="disp_mutation_mean" value="{{disp_mutation_mean}}"/>
		</div>
	</div>
</div>

</div>
</form>
%include('footer')
