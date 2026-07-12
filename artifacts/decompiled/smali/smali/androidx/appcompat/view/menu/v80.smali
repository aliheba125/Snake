.class public abstract Landroidx/appcompat/view/menu/v80;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/v80$a;
    }
.end annotation


# direct methods
.method public static synthetic a(Ljava/lang/String;Landroidx/appcompat/view/menu/v80$a;Landroidx/appcompat/view/menu/xd;)Landroidx/appcompat/view/menu/t80;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/appcompat/view/menu/v80;->d(Ljava/lang/String;Landroidx/appcompat/view/menu/v80$a;Landroidx/appcompat/view/menu/xd;)Landroidx/appcompat/view/menu/t80;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Landroidx/appcompat/view/menu/ud;
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/t80;->a(Ljava/lang/String;Ljava/lang/String;)Landroidx/appcompat/view/menu/t80;

    move-result-object p0

    const-class p1, Landroidx/appcompat/view/menu/t80;

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/ud;->l(Ljava/lang/Object;Ljava/lang/Class;)Landroidx/appcompat/view/menu/ud;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Landroidx/appcompat/view/menu/v80$a;)Landroidx/appcompat/view/menu/ud;
    .locals 2

    const-class v0, Landroidx/appcompat/view/menu/t80;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ud;->m(Ljava/lang/Class;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Landroidx/appcompat/view/menu/il;->j(Ljava/lang/Class;)Landroidx/appcompat/view/menu/il;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/ud$b;->b(Landroidx/appcompat/view/menu/il;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/view/menu/u80;

    invoke-direct {v1, p0, p1}, Landroidx/appcompat/view/menu/u80;-><init>(Ljava/lang/String;Landroidx/appcompat/view/menu/v80$a;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/ud$b;->f(Landroidx/appcompat/view/menu/de;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ud$b;->d()Landroidx/appcompat/view/menu/ud;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/String;Landroidx/appcompat/view/menu/v80$a;Landroidx/appcompat/view/menu/xd;)Landroidx/appcompat/view/menu/t80;
    .locals 1

    const-class v0, Landroid/content/Context;

    invoke-interface {p2, v0}, Landroidx/appcompat/view/menu/xd;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    invoke-interface {p1, p2}, Landroidx/appcompat/view/menu/v80$a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/t80;->a(Ljava/lang/String;Ljava/lang/String;)Landroidx/appcompat/view/menu/t80;

    move-result-object p0

    return-object p0
.end method
