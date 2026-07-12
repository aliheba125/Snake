.class public abstract Landroidx/appcompat/view/menu/uh;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/appcompat/view/menu/kh;)Landroidx/appcompat/view/menu/th;
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/vg;

    sget-object v1, Landroidx/appcompat/view/menu/q60;->d:Landroidx/appcompat/view/menu/q60$b;

    invoke-interface {p0, v1}, Landroidx/appcompat/view/menu/kh;->d(Landroidx/appcompat/view/menu/kh$c;)Landroidx/appcompat/view/menu/kh$b;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v1, v2}, Landroidx/appcompat/view/menu/x60;->b(Landroidx/appcompat/view/menu/q60;ILjava/lang/Object;)Landroidx/appcompat/view/menu/kd;

    move-result-object v1

    invoke-interface {p0, v1}, Landroidx/appcompat/view/menu/kh;->o(Landroidx/appcompat/view/menu/kh;)Landroidx/appcompat/view/menu/kh;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/vg;-><init>(Landroidx/appcompat/view/menu/kh;)V

    return-object v0
.end method

.method public static final b(Landroidx/appcompat/view/menu/tw;Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/is0;

    invoke-interface {p1}, Landroidx/appcompat/view/menu/xg;->b()Landroidx/appcompat/view/menu/kh;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/view/menu/is0;-><init>(Landroidx/appcompat/view/menu/kh;Landroidx/appcompat/view/menu/xg;)V

    invoke-static {v0, v0, p0}, Landroidx/appcompat/view/menu/n31;->b(Landroidx/appcompat/view/menu/is0;Ljava/lang/Object;Landroidx/appcompat/view/menu/tw;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Landroidx/appcompat/view/menu/a60;->c()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Landroidx/appcompat/view/menu/gj;->c(Landroidx/appcompat/view/menu/xg;)V

    :cond_0
    return-object p0
.end method
