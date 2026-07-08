.class public abstract Landroidx/appcompat/view/menu/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/appcompat/view/menu/xg;)Landroidx/appcompat/view/menu/y9;
    .locals 2

    instance-of v0, p0, Landroidx/appcompat/view/menu/bm;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/y9;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/view/menu/y9;-><init>(Landroidx/appcompat/view/menu/xg;I)V

    return-object v0

    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/appcompat/view/menu/bm;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/bm;->l()Landroidx/appcompat/view/menu/y9;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/y9;->J()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    new-instance v0, Landroidx/appcompat/view/menu/y9;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/view/menu/y9;-><init>(Landroidx/appcompat/view/menu/xg;I)V

    return-object v0
.end method
