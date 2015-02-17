% rebase('base.tpl', title='Scouting form')
<div class="col-xs-12 Section-title">
<!--  <a class="pull-right flat-button fullscreen-toggle">
    Fullscreen
    <span class="glyphicon glyphicon-fullscreen"></span>
  </a>-->
</div>
<form action="/form/save" method="post" id="scouting-form" class="">
    <div class="row form-group">
      <div class="col-sm-12">
        <h3>
          <img id="logo" src="/static/logo.png" width="100px" class="pull-right"/>
          Recycle Rush Scouting Form
        </h3>
      </div>
    </div>
    <div class="row form-group">
      <div class="col-md-4 col-xs-12">
        <div class="form-field">
          <label for="match_id" class="col-xs-4 control-label">Match #</label>
          <div class="col-xs-8">
            <input id="match_id" name="match_id" type="number" class="form-control"/>
          </div>
        </div>
      </div>
      <div class="col-md-4 col-xs-12">
        <div class="form-field">
          <label for="team_id" class="col-xs-4 control-label">Team #</label>
          <div class="col-xs-8">
            <input id="team_id" name="team_id" type="number" class="form-control"/>
          </div>
        </div>
      </div>
    </div>

    <h3>Autonomous</h3>
    <div class="row form-group form-field">
      <div class="col-md-3">
        <h4>Auton Starting Position</h4>
      </div>
      <div class="col-md-9 btn-group" data-toggle="buttons">
        <label class="btn btn-default">
          <input type="radio" name="auton_start" id="auton_start" value="zone">Staging zone
        </label>
        <label class="btn btn-default">
          <input type="radio" name="auton_start" id="auton_start" value="middle">Between auto zone and landfill
        </label>
        <label class="btn btn-default">
          <input type="radio" name="auton_start" id="auton_start" value="other">Other
        </label>
      </div>
    </div>
    <div class="row form-group form-field">
        <div class="col-lg-3">
          <h4>Auton tasks completed:</h4>
        </div>
        <div class="col-lg-9 btn-group" data-toggle="buttons">
          <label class="btn btn-default">
            <input type="checkbox" name="auton_robot_move" id="auton_robot_move" value="1">Robot moves into auto zone
          </label>
          <label class="btn btn-default">
            <input type="checkbox" name="auton_tote_move" id="auton_tote_move" value="1">Move tote into auto zone
          </label>
          <label class="btn btn-default">
            <input type="checkbox" name="auton_container_move" id="auton_container_move" value="1">Move Recycling container into auto zone
          </label>
          <label class="btn btn-default">
            <input type="checkbox" name="auton_tote_stack" id="auton_tote_stack" value="1">3 tote stack!
          </label>
        </div>
    </div>

    <h3>Teleoperated</h3>
    <div class="row form-group form-field">
      <div class="col-md-3 col-sm-12">
        <h4>Stacking capabilities:</h4>
      </div>
      <div class="col-md-9 col-sm-12 btn-group" data-toggle="buttons">
        <label class="btn btn-default">
          <input type="checkbox" name="bottom_stacker" id="bottom_stacker" value="1">Add to bottom (bottom stacker)
        </label>
        <label class="btn btn-default">
          <input type="checkbox" name="top_stacker" id="top_stacker" value="1">Add to top (top stacker)
        </label>
        <label class="btn btn-default">
          <input type="checkbox" name="bulldozer" id="bulldozer" value="1">Bulldozer/pusher
        </label>
        <label class="btn btn-default">
          <input type="checkbox" name="other_capabilities" id="other_capabilities" value="1">Other
        </label>
      </div>
    </div>

    <div class="row form-group form-field">
      <label for="totes_stacked" class="col-md-3 col-sm-4 control-label"><h4>Totes Stacked On Platform:</h4></label>
      <div class="col-md-3 col-sm-8">
        <span class="input-group form-field">
          <input id="totes_stacked" name="totes_stacked" type="number" class="form-control custom-spinner" value="0"/>
        </span>
        <span class="error-placeholder"></span>
      </div>
    </div>
    <div class="row form-group form-field">
      <div class="col-md-3 col-sm-12">
        <h4>Highest Tote Stack:</h4>
      </div>
      <div class="col-md-9 col-sm-12 btn-group" data-toggle="buttons">
        <label class="btn btn-default active"><input type="radio" name="tote_height" id="tote_height" value="0" checked="checked">None</label>
        <label class="btn btn-default"><input type="radio" name="tote_height" id="tote_height" value="1">1 tote</label>
        <label class="btn btn-default"><input type="radio" name="tote_height" id="tote_height" value="2">2 totes</label>
        <label class="btn btn-default"><input type="radio" name="tote_height" id="tote_height" value="3">3 totes</label>
        <label class="btn btn-default"><input type="radio" name="tote_height" id="tote_height" value="4">4 totes</label>
        <label class="btn btn-default"><input type="radio" name="tote_height" id="tote_height" value="5">5 totes</label>
        <label class="btn btn-default"><input type="radio" name="tote_height" id="tote_height" value="6">6 totes</label>
      </div>
    </div>

    <div class="row form-group form-field">
      <div class="col-md-3 col-sm-4">
        <h4>Recycling Containers Scored:</h4>
      </div>
      <div class="col-md-3 col-sm-8">
        <span class="input-group form-field">
          <input id="bins_stacked" name="bins_stacked" type="number" class="form-control custom-spinner" value="0"/>
        </span>
      </div>
    </div>
    <div class="row form-group form-field">
      <div class="col-md-3">
        <h4>Highest container scored:</h4>
      </div>
      <div class="col-md-9 btn-group" data-toggle="buttons">
        <label class="btn btn-default active"><input type="radio" name="bin_height" id="bin_height" value="0" checked="checked">None</label>
        <label class="btn btn-default"><input type="radio" name="bin_height" id="bin_height" value="1">1 tote</label>
        <label class="btn btn-default"><input type="radio" name="bin_height" id="bin_height" value="2">2 totes</label>
        <label class="btn btn-default"><input type="radio" name="bin_height" id="bin_height" value="3">3 totes</label>
        <label class="btn btn-default"><input type="radio" name="bin_height" id="bin_height" value="4">4 totes</label>
        <label class="btn btn-default"><input type="radio" name="bin_height" id="bin_height" value="5">5 totes</label>
        <label class="btn btn-default"><input type="radio" name="bin_height" id="bin_height" value="6">6 totes</label>
      </div>
    </div>

    <div class="row form-group form-field">
      <div class="col-md-3">
        <h4>Coopertition</h4>
      </div>
      <div class="col-md-9 btn-group" data-toggle="buttons">
        <label class="btn btn-default"><input type="radio" name="coop" id="coop" value="start">Start</label>
        <label class="btn btn-default"><input type="radio" name="coop" id="coop" value="add">Add</label>
        <label class="btn btn-default"><input type="radio" name="coop" id="coop" value="none">None</label>
      </div>
    </div>

    <div class="row form-group form-field">
      <div class="col-md-3">
        <h4>Noodle Capabilities:</h4>
      </div>
      <div class="col-md-9 btn-group" data-toggle="buttons">
        <label class="btn btn-default">
          <input type="checkbox" name="push_noodle" id="push_noodle" value="1">Push on ground
        </label>
        <label class="btn btn-default">
          <input type="checkbox" name="noodle_pickup" id="noodle_pickup" value="1">Pick up from ground
        </label>
        <label class="btn btn-default">
          <input type="checkbox" name="noodle_from_human" id="noodle_from_human" value="1">Get from human
        </label>
        <label class="btn btn-default">
          <input type="checkbox" name="noodle_in_bins" id="noodle_in_bins" value="1">Put in the bins
        </label>
      </div>
    </div>
    <div class="row form-group form-field">
      <div class="col-md-3">
        <h4>Get Containers From Step?</h4>
      </div>
      <div class="col-md-9 btn-group" data-toggle="buttons">
        <label class="btn btn-default">
          <input type="radio" name="step_containers" id="step_containers" value="1" class="form-control">Yes
        </label>
        <label class="btn btn-default">
          <input type="radio" name="step_containers" id="step_containers" value="0" class="form-control">No
        </label>
      </div>
    </div>

    <div class="row">
      <div class="col-md-2 form-field">
        <h4>Final Alliance Score:</h4>
      </div>
      <div class="col-md-4">
        <input id="score" name="score" type="number" class="form-control form-field" value="0"/>
      </div>
      <div class = "col-md-1 form-field">
        <h4>Penalties</h4>
      </div>
      <div class = "col-md-2">
        <span class="input-group form-field">
          <input id="penalties" name="penalties" type="number" class="form-control custom-spinner" value="0"/>
        </span>
      </div>
    </div>

    <div class="row form-field">
      <div class="col-md-2 col-sm-2">
        <h4>Comments:</h4>
      </div>
      <div class="col-md-10 col-sm-10">
        <textarea id="comments" name="comments" placeholder="Exceptional noodle thrower, good alliance choice, robot malfunction..."
        class="com-field form-control"></textarea>
      </div>
    </div>

    <div class="row">
      <div class="col-md-12 col-sm-12">
        <div>
          <input type="submit" id="submit" class="btn btn-primary pull-right" value="Submit"/>
        </div>
      </div>
    </div>

</form>
<script src="/static/jquery.validate.min.js"></script>
<script src="/static/form.js"></script>
