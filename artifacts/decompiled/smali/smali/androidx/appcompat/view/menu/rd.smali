.class public abstract Landroidx/appcompat/view/menu/rd;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/Object;Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;
    .locals 0

    instance-of p1, p0, Landroidx/appcompat/view/menu/nd;

    if-eqz p1, :cond_0

    sget-object p1, Landroidx/appcompat/view/menu/np0;->m:Landroidx/appcompat/view/menu/np0$a;

    check-cast p0, Landroidx/appcompat/view/menu/nd;

    iget-object p0, p0, Landroidx/appcompat/view/menu/nd;->a:Ljava/lang/Throwable;

    invoke-static {p0}, Landroidx/appcompat/view/menu/op0;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/view/menu/np0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/appcompat/view/menu/np0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final b(Ljava/lang/Object;Landroidx/appcompat/view/menu/x9;)Ljava/lang/Object;
    .locals 3

    invoke-static {p0}, Landroidx/appcompat/view/menu/np0;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroidx/appcompat/view/menu/nd;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Landroidx/appcompat/view/menu/nd;-><init>(Ljava/lang/Throwable;ZILandroidx/appcompat/view/menu/lj;)V

    :goto_0
    return-object p0
.end method

.method public static final c(Ljava/lang/Object;Landroidx/appcompat/view/menu/fw;)Ljava/lang/Object;
    .locals 3

    invoke-static {p0}, Landroidx/appcompat/view/menu/np0;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    new-instance v0, Landroidx/appcompat/view/menu/od;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/od;-><init>(Ljava/lang/Object;Landroidx/appcompat/view/menu/fw;)V

    move-object p0, v0

    goto :goto_0

    :cond_0
    new-instance p0, Landroidx/appcompat/view/menu/nd;

    const/4 p1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p1, v1}, Landroidx/appcompat/view/menu/nd;-><init>(Ljava/lang/Throwable;ZILandroidx/appcompat/view/menu/lj;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static synthetic d(Ljava/lang/Object;Landroidx/appcompat/view/menu/fw;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/rd;->c(Ljava/lang/Object;Landroidx/appcompat/view/menu/fw;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
