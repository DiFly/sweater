<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<@c.page>
    <section>
        <@l.logout />
    </section>
    <section>
        <form method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <input type="text" name="text" placeholder="Enter messages">
            <input type="text" name="tag" placeholder="Tag">
            <button type="submit">Adding</button>
        </form>
    </section>
    <section>
        <form method="get" action="/main">
            <input type="text" name="filter" value="${filter}">
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
        </div>
        <#else>
            No message
        </#list>
    </section>
</@c.page>