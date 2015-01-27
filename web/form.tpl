% rebase('base.tpl', title='Scouting form')
<div class="col-xs-12"><h2>Scouting form</h2></div>
<form action="/form/save" method="post" id="scouting-form"
        class="">
    <div class="row form-group">
        <div class="col-md-4">
            <div class="form-field">
                <label for="match_id" class="col-md-4 col-xs-6 control-label">Match #</label>
                <div class="col-md-8 col-xs-6">
                    <input id="match_id" name="match_id" type="number" class="form-control"/>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="form-field">
                <label for="team_id" class="col-md-4 col-xs-6 control-label">Team #</label>
                <div class="col-md-8 col-xs-6">
                    <input id="team_id" name="team_id" type="number" class="form-control"/>
                </div>
            </div>
        </div>
    </div>
    <h2>Autonomous</h2>
    <h4>Auton Starting Position:</h3>
    <div class="btn-group" role="group" aria-label="...">
      <button type="button" class="btn btn-default">Behind totes and bins</button>
      <button type="button" class="btn btn-default">Between auto zone and landfill</button>
    </div>
    <h4>Auton tasks completed</h4>
    <div class="checkbox">
      <label><input type="checkbox" value="">Robot moves into auto zone</label>
    </div>
    <div class="checkbox">
      <label><input type="checkbox" value="">Move tote into auto zone</label>
    </div>
    <div class="checkbox">
        <label><input type="checkbox" value="">Move Recycling container into auto zone</label>
    </div>
    <div class="checkbox">
      <label><input type="checkbox" value="">3 tote stack!</label>
    </div>
    
    <div class="row form-group">
        <div class="col-md-8">
            <div class="form-field">
                <input type="submit" class="btn btn-success pull-right" value="Submit"/>
            </div>
        </div>
    </div>
</form>
<script src="/static/jquery.validate.min.js"></script>
<script src="/static/form.js"></script>
