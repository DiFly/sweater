<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<@c.page>
    <section>
        <@l.logout />
        <span><a href="/user">User list</a></span>
    </section>
    <section>
        <form method="post" enctype="multipart/form-data">
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <input type="text" name="text" placeholder="Enter messages">
            <input type="text" name="tag" placeholder="Tag">
            <input type="file" name="file" placeholder="Select file">
            <button type="submit">Adding</button>
        </form>
    </section>
    <section>
        <form method="get" action="/main">
            <input type="text" name="filter" value="${filter?ifExists}">
            <button type="submit">Search</button>
        </form>
    </section>
    <section>
        <h3>
            List of messages
        </h3>
        <#list messages as message>
        <div>
            <b>${message.id}</b>
            <span>${message.text}</span>
            <i>${message.tag}</i>
            <strong>${message.authorName}</strong>
            <div>
                <#if message.filename??>
                    <img src="/img/${message.filename}">
                </#if>
            </div>
        </div>
        <#else>
            No message
        </#list>
    </section>
</@c.page>