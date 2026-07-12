.class public abstract Landroidx/appcompat/view/menu/un0;
.super Landroidx/appcompat/view/menu/tn0;
.source "SourceFile"


# direct methods
.method public static a(II)I
    .locals 0

    if-ge p0, p1, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method

.method public static b(II)I
    .locals 0

    if-le p0, p1, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method

.method public static c(JJ)J
    .locals 1

    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    move-wide p0, p2

    :cond_0
    return-wide p0
.end method

.method public static d(II)Landroidx/appcompat/view/menu/r50;
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/r50;->p:Landroidx/appcompat/view/menu/r50$a;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Landroidx/appcompat/view/menu/r50$a;->a(III)Landroidx/appcompat/view/menu/r50;

    move-result-object p0

    return-object p0
.end method
