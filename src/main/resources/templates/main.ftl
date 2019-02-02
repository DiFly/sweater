<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<@c.page>
    <section class="form-row">
        <div class="form-group col-md6">
            <form method="get" action="/main" class="form-inline">
                <input type="text" name="filter" value="${filter?ifExists}" class="form-control mr-3" placeholder="Search by tag" />
                <button type="submit" class="btn btn-primary">Search</button>
            </form>
        </div>
    </section>

    <#include "parts/messageEdit.ftl" />

    <#include "parts/messageList.ftl" />


</@c.page>