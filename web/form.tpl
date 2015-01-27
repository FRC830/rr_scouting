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
