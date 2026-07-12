.class public abstract synthetic Landroidx/appcompat/view/menu/kg1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroidx/appcompat/view/menu/eg1;Landroidx/appcompat/view/menu/qg1;Landroidx/appcompat/view/menu/pw1;Ljava/util/List;)Landroidx/appcompat/view/menu/qg1;
    .locals 2

    invoke-interface {p1}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroidx/appcompat/view/menu/eg1;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroidx/appcompat/view/menu/eg1;->h(Ljava/lang/String;)Landroidx/appcompat/view/menu/qg1;

    move-result-object p0

    instance-of v0, p0, Landroidx/appcompat/view/menu/gg1;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/appcompat/view/menu/gg1;

    invoke-virtual {p0, p2, p3}, Landroidx/appcompat/view/menu/gg1;->a(Landroidx/appcompat/view/menu/pw1;Ljava/util/List;)Landroidx/appcompat/view/menu/qg1;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p1}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s is not a function"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-interface {p1}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hasOwnProperty"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x1

    invoke-static {v1, p1, p3}, Landroidx/appcompat/view/menu/iu1;->g(Ljava/lang/String;ILjava/util/List;)V

    const/4 p1, 0x0

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/qg1;

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/pw1;->b(Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object p1

    invoke-interface {p1}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/eg1;->k(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Landroidx/appcompat/view/menu/qg1;->j:Landroidx/appcompat/view/menu/qg1;

    return-object p0

    :cond_2
    sget-object p0, Landroidx/appcompat/view/menu/qg1;->k:Landroidx/appcompat/view/menu/qg1;

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p1}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Object has no function %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/util/Map;)Ljava/util/Iterator;
    .locals 1

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    new-instance v0, Landroidx/appcompat/view/menu/ig1;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/ig1;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method
