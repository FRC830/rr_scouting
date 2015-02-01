% rebase('base.tpl', title='Scouting form')
<div class="col-xs-12 Section-title">
<!--Commented to allow form to fit without scrolling, uncomment if you want
  <h2>
    <img src="/static/logo.png" height="50px"/>
    Recycle Rush Scouting Form
  </h2>
-->
<!--  <a class="pull-right flat-button fullscreen-toggle">
    Fullscreen
    <span class="glyphicon glyphicon-fullscreen"></span>
  </a>-->
</div>
<form action="/form/save" method="post" id="scouting-form" class="">
    <div class="row form-group">
        <div class="col-md-4">
            <div class="form-field">
                <label for="match_id" class="col-md-4 col-xs-6 control-label">Match #</label>
                <div class="col-md-8 col-xs-6">
                    <input id="match_id" name="match_id" type="number" class="form-control"/>
                    <span class="error-placeholder"></span>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="form-field">
                <label for="team_id" class="col-md-4 col-xs-6 control-label">Team #</label>
                <div class="col-md-8 col-xs-6">
                    <input id="team_id" name="team_id" type="number" class="form-control"/>
                    <span class="error-placeholder"></span>
                </div>
            </div>
        </div>
    </div>

    <h3>Autonomous</h3>
    <div class="row form-field section">
      <div class="col-md-2">
          <h4>Auton Starting Position</h4>
      </div>
      <div class="col-md-8 btn-group" data-toggle="buttons">
        <label class="btn btn-default">
          <input type="radio" name="auton_start" id="auton_start" value="move">Auto zone
        </label>
        <label class="btn btn-default">
          <input type="radio" name="auton_start" id="auton_start" value="tote">Between auto zone and landfill
        </label>
      </div>
    </div>
    <div class="row form-field section">
        <div class="col-md-2">
            <h4>Tasks completed:</h4>
        </div>
        <div class="col-md-10 btn-group" data-toggle="buttons">
          <label class="btn btn-default">
            <input type="checkbox" name="auton_tasks" id="auton_tasks" value="move">Robot moves into auto zone
          </label>
          <label class="btn btn-default">
            <input type="checkbox" name="auton_tasks" id="auton_tasks" value="tote">Move tote into auto zone
          </label>
          <label class="btn btn-default">
            <input type="checkbox" name="auton_tasks" id="auton_tasks" value="container">Move Recycling container into auto zone
          </label>
          <label class="btn btn-default">
            <input type="checkbox" name="auton_tasks" id="auton_tasks" value="stack">3 tote stack!
          </label>
        </div>
    </div>

    <h3>Teleoperated</h3>
    <div class = "row section">
      <div class="col-md-2 col-sm-12">
        <h4>Stacking capabilities:</h4>
      </div>
      <div class="col-md-10 col-sm-12 btn-group" data-toggle="buttons">
        <label class="btn btn-default">
          <input type="checkbox" name="stack_capabilities" id="stack_capabilities" value="bottom">Add to bottom (bottom stacker)
        </label>
        <label class="btn btn-default">
          <input type="checkbox" name="stack_capabilities" id="stack_capabilities" value="top">Add to top (top stacker)
        </label>
        <label class="btn btn-default">
          <input type="checkbox" name="stack_capabilities" id="stack_capabilities" value="bulldozer">Bulldozer/pusher
        </label>
        <label class="btn btn-default">
          <input type="checkbox" name="stack_capabilities" id="stack_capabilities" value="other">Other
        </label>
      </div>
    </div>
    
    <div class="row section">
      <label for="totes_stacked" class="col-md-2 col-sm-4 control-label"><h4>Totes Stacked On Platform:</h4></label>
      <div class="col-md-2 col-sm-8">
        <span class="input-group form-field">
          <input id="totes_stacked" name="totes_stacked" type="number" class="form-control custom-spinner"/>
        </span>
        <span class="error-placeholder"></span>
      </div>
    </div>
    <div class="row section">
      <div class="col-md-2 col-sm-12">
        <h4>Highest Tote Stack:</h4>
      </div>
      <div class="col-md-10 col-sm-12 btn-group" data-toggle="buttons">
        <label class="btn btn-default"><input type="radio" name="tote_height" id="tote_height" value="1">1 tote high</label>
        <label class="btn btn-default"><input type="radio" name="tote_height" id="tote_height" value="2">2 totes high</label>
        <label class="btn btn-default"><input type="radio" name="tote_height" id="tote_height" value="3">3 totes high</label>
        <label class="btn btn-default"><input type="radio" name="tote_height" id="tote_height" value="4">4 totes high</label>
        <label class="btn btn-default"><input type="radio" name="tote_height" id="tote_height" value="5">5 totes high</label>
        <label class="btn btn-default"><input type="radio" name="tote_height" id="tote_height" value="6">6 totes high</label>
      </div>
    </div>
    
    <div class="row section">
      <div class="col-md-2">
        <h4>Recycling Containers Stackified:</h4>
      </div>
      <div class="col-md-2 col-sm-12">
        <span class="input-group form-field">
          <input id="bin_height" name="bin_height" type="number" class="form-control custom-spinner"/>
        </span>
      </div>
      <div class="col-md-6 col-sm-11 btn-group" data-toggle="buttons">
        <label class="btn btn-default"><input type="radio" name="bin_height" id="bin_height" value="1">1 tote high</label>
        <label class="btn btn-default"><input type="radio" name="bin_height" id="bin_height" value="2">2 totes high</label>
        <label class="btn btn-default"><input type="radio" name="bin_height" id="bin_height" value="3">3 totes high</label>
        <label class="btn btn-default"><input type="radio" name="bin_height" id="bin_height" value="4">4 totes high</label>
        <label class="btn btn-default"><input type="radio" name="bin_height" id="bin_height" value="5">5 totes high</label>
        <label class="btn btn-default"><input type="radio" name="bin_height" id="bin_height" value="6">6 totes high</label>
      </div>
      <div class="col-md-2 col-sm-3 btn-group" data-toggle="buttons">
          <label class="btn btn-default"><input type="checkbox" name="bin_noodle" id="bin_noodle" value="noodle">Noodle in the bin?</label>
      </div>
    </div>
    
    <div class = "row section">
      <div class="col-md-4 col-sm-12">
        <h4>Noodle Handling:</h4>
      </div>
      <div class="col-md-8 col-sm-12 btn-group" data-toggle="buttons">
        <label class="btn btn-default">
          <input type="checkbox" name="noodle_capabilities" id="noodle_capabilities" value="bottom">Pushing noodles on the ground
        </label>
        <label class="btn btn-default">
          <input type="checkbox" name="noodle_capabilities" id="noodle_capabilities" value="top">Pick up noodles from the ground
        </label>
        <label class="btn btn-default">
          <input type="checkbox" name="noodle_capabilities" id="noodle_capabilities" value="bulldozer">Get noodles from human
        </label>
      </div>
    </div>
    
    <div class = "row section">
      <div class="col-md-4 col-sm-12">
        <h4>Coopertition (that they contributed to)</h4>
      </div>
      <div class="col-md-8 col-sm-12 btn-group" data-toggle="buttons">
        <label class="btn btn-default"><input type="radio" name="coop" id="coop" value="set">Coopertition set</label>
        <label class="btn btn-default"><input type="radio" name="coop" id="coop" value="stack_start">Start coopertition stack</label>
        <label class="btn btn-default"><input type="radio" name="coop" id="coop" value="stack_finish">Finish coopertition stack</label>
        <label class="btn btn-default"><input type="radio" name="coop" id="coop" value="none">This fool didn't do nuthin'</label>
      </div>
    </div>
    
    <div class = "row section">
      <div class = "col-md-2">
        <h4>Step capabilities</h4>
      </div>
      <div class = "col-md-4" data-toggle="buttons">
        <label class="btn btn-default">
          <input type="checkbox" name="step_containers" id="step_containers" value="1">Recycling containers from the step
        </label>
      </div>
      <div class = "col-md-2">
        <h4>Penalties</h4>
      </div>
      <div class = "col-md-2">
        <input id="penalties" name="penalties" type="number" class="form-control"/>
      </div>
    </div>
    
    <div class="row section">
      <div class="col-md-2">
        <h3>Match Result:</h3>
      </div>
      <div class="col-md-6 btn-group" data-toggle="buttons">
        <label class="btn btn-default"><input type="radio" name="result" id="result" value="1">Win</label>
        <label class="btn btn-default"><input type="radio" name="result" id="result" value="0">Loss</label>
        <label class="btn btn-default"><input type="radio" name="result" id="result" value="0.5">Tie</label>
      </div>
      <div class="col-md-4">
        <div class="form-field">
          <input type="submit" class="btn btn-success pull-right" value="Submit"/>
        </div>
      </div>
    </div>
</form>
<script src="/static/jquery.validate.min.js"></script>
<script src="/static/form.js"></script>
