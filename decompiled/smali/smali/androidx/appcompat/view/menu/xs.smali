.class public abstract synthetic Landroidx/appcompat/view/menu/xs;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/appcompat/view/menu/kh;)V
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/q60;->d:Landroidx/appcompat/view/menu/q60$b;

    invoke-interface {p0, v0}, Landroidx/appcompat/view/menu/kh;->d(Landroidx/appcompat/view/menu/kh$c;)Landroidx/appcompat/view/menu/kh$b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Flow context cannot contain job in it. Had "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final b(Landroidx/appcompat/view/menu/ss;Landroidx/appcompat/view/menu/kh;)Landroidx/appcompat/view/menu/ss;
    .locals 8

    invoke-static {p1}, Landroidx/appcompat/view/menu/xs;->a(Landroidx/appcompat/view/menu/kh;)V

    sget-object v0, Landroidx/appcompat/view/menu/bo;->m:Landroidx/appcompat/view/menu/bo;

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Landroidx/appcompat/view/menu/gx;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Landroidx/appcompat/view/menu/gx;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Landroidx/appcompat/view/menu/gx$a;->a(Landroidx/appcompat/view/menu/gx;Landroidx/appcompat/view/menu/kh;ILandroidx/appcompat/view/menu/u8;ILjava/lang/Object;)Landroidx/appcompat/view/menu/ss;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v7, Landroidx/appcompat/view/menu/ya;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/view/menu/ya;-><init>(Landroidx/appcompat/view/menu/ss;Landroidx/appcompat/view/menu/kh;ILandroidx/appcompat/view/menu/u8;ILandroidx/appcompat/view/menu/lj;)V

    move-object p0, v7

    :goto_0
    return-object p0
.end method
