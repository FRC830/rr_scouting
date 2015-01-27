% rebase('base.tpl', title='Scouting form')
<form action="/form/save" method="post" id="scouting-form"
        class="">
    <h2>Scouting form</h2>
    <div class="form-group">
        <div class="form-group row">
            <label class="col-xs-3 control-label">Match #</label>
            <input name="match_id" type="number" class="form-control col-xs-3"/>
        </div>
        <div class="form-group row">
            <label class="col-xs-3 control-label">Team #</label>
            <input name="team_id" type="number" class="form-control col-xs-3"/>
        </div>
    </div>
</form>
<script src="/static/form.js"></script>
