.class public abstract Landroidx/appcompat/view/menu/ge0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroidx/appcompat/view/menu/fe0;Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Landroidx/appcompat/view/menu/fe0;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/appcompat/view/menu/fe0;

    invoke-interface {p0}, Landroidx/appcompat/view/menu/fe0;->a()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p1}, Landroidx/appcompat/view/menu/fe0;->a()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
