<#import "/include/layout.ftl" as layout>
<@layout.myLayout title="kotlin" subTitle="kt">
    <a href="/kt/hello">reload</a>
    <form method="get" action="/kt/hello">
        <input type="text" name="num">
        <input type="submit" value="post">
    </form>
result : ${result}
</@layout.myLayout>
