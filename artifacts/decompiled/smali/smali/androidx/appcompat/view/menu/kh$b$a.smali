.class public abstract Landroidx/appcompat/view/menu/kh$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/kh$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Landroidx/appcompat/view/menu/kh$b;Ljava/lang/Object;Landroidx/appcompat/view/menu/tw;)Ljava/lang/Object;
    .locals 1

    const-string v0, "operation"

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1, p0}, Landroidx/appcompat/view/menu/tw;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroidx/appcompat/view/menu/kh$b;Landroidx/appcompat/view/menu/kh$c;)Landroidx/appcompat/view/menu/kh$b;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Landroidx/appcompat/view/menu/kh$b;->getKey()Landroidx/appcompat/view/menu/kh$c;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/z50;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "null cannot be cast to non-null type E of kotlin.coroutines.CoroutineContext.Element.get"

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/z50;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static c(Landroidx/appcompat/view/menu/kh$b;Landroidx/appcompat/view/menu/kh$c;)Landroidx/appcompat/view/menu/kh;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Landroidx/appcompat/view/menu/kh$b;->getKey()Landroidx/appcompat/view/menu/kh$c;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/z50;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Landroidx/appcompat/view/menu/bo;->m:Landroidx/appcompat/view/menu/bo;

    :cond_0
    return-object p0
.end method

.method public static d(Landroidx/appcompat/view/menu/kh$b;Landroidx/appcompat/view/menu/kh;)Landroidx/appcompat/view/menu/kh;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/kh$a;->a(Landroidx/appcompat/view/menu/kh;Landroidx/appcompat/view/menu/kh;)Landroidx/appcompat/view/menu/kh;

    move-result-object p0

    return-object p0
.end method
