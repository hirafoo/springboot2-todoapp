<#import "/include/layout.ftl" as layout>
<#import "/include/macro.ftl" as macro>
<@layout.myLayout title="kotlin" subTitle="kt">

    ${hello}

    <hr>
    register
    <form method="post" action="/todo/create">
        name<input type="text" name="name" />
        description<input type="text" name="description" />
        <input type="submit" />
    </form>
    <hr>

    <table border="1">
        <tr>
            <td>id</td>
            <td>name</td>
            <td>description</td>
            <td>done?</td>
            <td>edit</td>
            <td>term</td>
            <td>delete</td>
            <td>api</td>
            <td>created_at</td>
        </tr>
    <#list todoList as todo>
        <tr>
            <td>${todo.id}</td>
            <td>${todo.name}</td>
            <td>${todo.description}</td>
            <td>
                <#if todo.done>
                    done
                <#else>
                    not yet
                <form method="post" action="/todo/done">
                    <input type="hidden" name="id" value="${todo.id}" />
                    <input type="submit" value="done" />
                </form>
                </#if>
            </td>
            <td><@macro.link link="/todo/edit/${todo.id}" /></td>
            <td>${todo.getTerm()}</td>
            <td>
                <form method="post" action="/todo/delete">
                    <input type="hidden" name="id" value="${todo.id}" />
                    <input type="submit" value="delete" />
                </form>
            </td>
            <td><@macro.link link="/kt/api/todo/detail/${todo.id}" /></td>
            <td>${todo.createdAt}</td>
        </tr>
    </#list>
    </table>

</@layout.myLayout>
