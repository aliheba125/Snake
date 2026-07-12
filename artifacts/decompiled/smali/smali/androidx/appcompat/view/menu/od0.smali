.class public abstract Landroidx/appcompat/view/menu/od0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Class;)[Ljava/lang/Class;
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/od0;->b(Ljava/lang/Class;Ljava/util/HashSet;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0
.end method

.method public static b(Ljava/lang/Class;Ljava/util/HashSet;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/od0;->b(Ljava/lang/Class;Ljava/util/HashSet;)V

    :cond_1
    return-void
.end method

.method public static c([Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/r4;->a([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    aget-object p0, p0, p1

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static d([Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroidx/appcompat/view/menu/r4;->c([Ljava/lang/Object;Ljava/lang/Class;I)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    aget-object p0, p0, p1

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static e([Ljava/lang/Object;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    aget-object v1, p0, v0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->h()Landroidx/appcompat/view/menu/yu0;

    move-result-object v2

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroidx/appcompat/view/menu/yu0;->A(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->o()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static f([Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    aget-object v2, p0, v1

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->h()Landroidx/appcompat/view/menu/yu0;

    move-result-object v3

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroidx/appcompat/view/menu/yu0;->A(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->o()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static g([Ljava/lang/Object;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    aget-object v1, p0, v0

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->J2()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->p()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static h([Ljava/lang/Object;)V
    .locals 4

    const-class v0, Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/r4;->b([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    aget-object v1, p0, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->h()Landroidx/appcompat/view/menu/yu0;

    move-result-object v2

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroidx/appcompat/view/menu/yu0;->A(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->o()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    :cond_0
    return-void
.end method

.method public static i([Ljava/lang/Object;)V
    .locals 3

    const-class v0, Ljava/lang/Integer;

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/r4;->b([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    aget-object v1, p0, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->J2()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->p()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v0

    :cond_0
    return-void
.end method
