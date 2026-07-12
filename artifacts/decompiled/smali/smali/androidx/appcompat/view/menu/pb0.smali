.class public abstract Landroidx/appcompat/view/menu/pb0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)Landroidx/appcompat/view/menu/hh;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/pb0;->b()Landroidx/appcompat/view/menu/hh;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Landroidx/appcompat/view/menu/li;

    invoke-direct {p0}, Landroidx/appcompat/view/menu/li;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, Landroidx/appcompat/view/menu/wp0;

    invoke-direct {p0}, Landroidx/appcompat/view/menu/wp0;-><init>()V

    return-object p0
.end method

.method public static b()Landroidx/appcompat/view/menu/hh;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/wp0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/wp0;-><init>()V

    return-object v0
.end method

.method public static c()Landroidx/appcompat/view/menu/kn;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/kn;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/kn;-><init>()V

    return-object v0
.end method

.method public static d(Landroid/view/View;F)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v0, p0, Landroidx/appcompat/view/menu/ob0;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/appcompat/view/menu/ob0;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ob0;->S(F)V

    :cond_0
    return-void
.end method

.method public static e(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/view/menu/ob0;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/appcompat/view/menu/ob0;

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/pb0;->f(Landroid/view/View;Landroidx/appcompat/view/menu/ob0;)V

    :cond_0
    return-void
.end method

.method public static f(Landroid/view/View;Landroidx/appcompat/view/menu/ob0;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ob0;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/appcompat/view/menu/m61;->f(Landroid/view/View;)F

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/ob0;->W(F)V

    :cond_0
    return-void
.end method
