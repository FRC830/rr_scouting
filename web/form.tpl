% rebase('base.tpl', title='Scouting form')
<div class="col-xs-12 Section-title">
<!--  <a class="pull-right flat-button fullscreen-toggle">
    Fullscreen
    <span class="glyphicon glyphicon-fullscreen"></span>
  </a>-->
</div>
<form action="/form/save" method="post" id="scouting-form" class="">
    <div class="row form-group">
      <div class="col-md-4">
        <h3>
          <img src="/static/logo.png" width="50px"/>
          Recycle Rush Scouting Form
        </h3>
      </div>
      <div class="col-md-4">
        <div class="form-field">
            <label for="match_id" class="col-md-3 col-xs-4 control-label">Match #</label>
            <div class="col-md-8 col-xs-6">
                <input id="match_id" name="match_id" type="number" class="form-control"/>
            </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="form-field">
            <label for="team_id" class="col-md-3 col-xs-4 control-label">Team #</label>
            <div class="col-md-8 col-xs-6">
                <input id="team_id" name="team_id" type="number" class="form-control"/>
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
          <input type="radio" name="auton_start" id="auton_start" value="zone">Staging zone
        </label>
        <label class="btn btn-default">
          <input type="radio" name="auton_start" id="auton_start" value="middle">Between auto zone and landfill
        </label>
        <label class="btn btn-default">
          <input type="radio" name="auton_start" id="auton_start" value="other">other
        </label>
      </div>
    </div>
    <div class="row form-field section">
        <div class="col-md-3">
            <h4>Auton tasks completed:</h4>
        </div>
        <div class="col-md-9 btn-group" data-toggle="buttons">
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
      <label for="totes_stacked" class="col-md-3 col-sm-4 control-label"><h4>Totes Stacked On Platform:</h4></label>
      <div class="col-md-2 col-sm-8">
        <span class="input-group form-field">
          <input id="totes_stacked" name="totes_stacked" type="number" class="form-control custom-spinner" value="0"/>
        </span>
        <span class="error-placeholder"></span>
      </div>
    </div>
    <div class="row section">
      <div class="col-md-2 col-sm-12">
        <h4>Highest Tote Stack:</h4>
      </div>
      <div class="col-md-10 col-sm-12 btn-group" data-toggle="buttons">
        <label class="btn btn-default"><input type="radio" name="tote_height" id="tote_height" value="1">0 totes high</label>
        <label class="btn btn-default"><input type="radio" name="tote_height" id="tote_height" value="1">1 tote high</label>
        <label class="btn btn-default"><input type="radio" name="tote_height" id="tote_height" value="2">2 totes high</label>
        <label class="btn btn-default"><input type="radio" name="tote_height" id="tote_height" value="3">3 totes high</label>
        <label class="btn btn-default"><input type="radio" name="tote_height" id="tote_height" value="4">4 totes high</label>
        <label class="btn btn-default"><input type="radio" name="tote_height" id="tote_height" value="5">5 totes high</label>
        <label class="btn btn-default"><input type="radio" name="tote_height" id="tote_height" value="6">6 totes high</label>
      </div>
    </div>

    <div class="row">
      <div class="col-md-3">
        <h4>Recycling Containers Scored:</h4>
      </div>
      <div class="col-md-3 col-sm-12">
        <span class="input-group form-field">
          <input id="bins_stacked" name="bins_stacked" type="number" class="form-control custom-spinner" value="0"/>
        </span>
      </div>
    </div>
    <div class="row">
      <div class="col-md-3 col-sm-12">
        <h4>Highest container scored:</h4>
      </div>
      <div class="col-md-9 col-sm-12 btn-group" data-toggle="buttons">
        <label class="btn btn-default"><input type="radio" name="bin_height" id="bin_height" value="0">None</label>
        <label class="btn btn-default"><input type="radio" name="bin_height" id="bin_height" value="1">1 tote high</label>
        <label class="btn btn-default"><input type="radio" name="bin_height" id="bin_height" value="2">2 totes high</label>
        <label class="btn btn-default"><input type="radio" name="bin_height" id="bin_height" value="3">3 totes high</label>
        <label class="btn btn-default"><input type="radio" name="bin_height" id="bin_height" value="4">4 totes high</label>
        <label class="btn btn-default"><input type="radio" name="bin_height" id="bin_height" value="5">5 totes high</label>
        <label class="btn btn-default"><input type="radio" name="bin_height" id="bin_height" value="6">6 totes high</label>
      </div>
    </div>

    <div class = "row section">
      <div class="col-md-4 col-sm-12">
        <h4>Coopertition (that they contributed to)</h4>
      </div>
      <div class="col-md-8 col-sm-12 btn-group" data-toggle="buttons">
        <label class="btn btn-default"><input type="radio" name="coop" id="coop" value="start">Start</label>
        <label class="btn btn-default"><input type="radio" name="coop" id="coop" value="add">Add</label>
        <label class="btn btn-default"><input type="radio" name="coop" id="coop" value="none">This fool didn't do nuthin'</label>
      </div>
    </div>

    <div class = "row section">
      <div class="col-md-1 col-sm-12">
        <h4>Noodle Capabilities:</h4>
      </div>
      <div class="col-md-7 col-sm-12 btn-group" data-toggle="buttons">
        <label class="btn btn-default">
          <input type="checkbox" name="noodle_capabilities" id="noodle_capabilities" value="push">Push on ground
        </label>
        <label class="btn btn-default">
          <input type="checkbox" name="noodle_capabilities" id="noodle_capabilities" value="pickup">Pick up from ground
        </label>
        <label class="btn btn-default">
          <input type="checkbox" name="noodle_capabilities" id="noodle_capabilities" value="human">Get from human
        </label>
        <label class="btn btn-default">
          <input type="checkbox" name="noodle_capabilities" id="noodle_capabilities" value="bin">Put in the bins
        </label>
      </div>
      <div class = "col-md-1">
        <h4>Step capabilities:</h4>
      </div>
      <div class = "col-md-3" data-toggle="buttons">
        <label class="btn btn-default">
          <input type="checkbox" name="step_containers" id="step_containers" value="1" class="form-control">Recycling containers from the step
        </label>
      </div>
    </div>

    <div class="row section">
      <div class="col-md-2">
        <h4>Final Alliance Score:</h4>
      </div>
      <div class="col-md-4">
        <input id="score" name="score" type="number" class="form-control" value="0"/>
      </div>
      <div class = "col-md-1">
        <h4>Penalties</h4>
      </div>
      <div class = "col-md-2">
        <span class="input-group form-field">
          <input id="penalties" name="penalties" type="number" class="form-control custom-spinner" value="0"/>
        </span>
      </div>
    </div>

    <div class="row section">
      <div class="col-md-2 col-sm-2">
        <h4>Comments:</h4>
      </div>
      <div class="col-md-10 col-sm-10">
        <textarea id="comments" name="comments" placeholder="Exceptional noodle thrower, good alliance choice, robot malfunction..." class="com-field form-control"></textarea>
      </div>
    </div>

    <div class="row">
      <div class="col-md-12 col-sm-12">
        <div class="form-field">
          <input type="submit" class="btn btn-success pull-right" value="Submit"/>
        </div>
      </div>
    </div>

</form>
<script src="/static/jquery.validate.min.js"></script>
<script src="/static/form.js"></script>
