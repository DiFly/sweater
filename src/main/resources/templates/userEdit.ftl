<#import "parts/common.ftl" as c>
<@c.page>
    <h3>
    User editor
    </h3>

    <form action="/user" method="post">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Name</label>
            <div class="col-sm-10">
                <input type="text" class="form-control"  name="username" placeholder="Bart Simpson" value="${user.username}">
            </div>
        </div>
        <div class="form-group row">
            <label for="inputEmail3" class="col-sm-2 col-form-label">Email</label>
            <div class="col-sm-10">
                <#if user.email??>
                    <input type="email" class="form-control" name="email" value="${user.email}" placeholder="bart.simpson@mail.com">
                <#else>
                    <input type="email" class="form-control" name="email" value="your@mail.com" placeholder="bart.simpson@mail.com">
                </#if>
            </div>
        </div>


        <div class="form-group row">
            <div class="col-sm-2">User role</div>
            <div class="col-sm-10">
                <#list roles as role>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>
                        <label class="form-check-label"> ${role} </label>
                    </div>
                </#list>
            </div>
        </div>


        <input type="hidden" value="${user.id}" name="userId">
        <input type="hidden" value="${_csrf.token}" name="_csrf">
        <button type="submit" class="btn btn-secondary">Save</button>
    </form>

</@c.page>