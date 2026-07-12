.class public abstract Landroidx/appcompat/view/menu/r4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([Ljava/lang/Object;Ljava/lang/Class;)I
    .locals 5

    invoke-static {p0}, Landroidx/appcompat/view/menu/r4;->d([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    array-length v0, p0

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p0, v2

    add-int/lit8 v3, v3, 0x1

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne p1, v4, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static b([Ljava/lang/Object;Ljava/lang/Class;)I
    .locals 3

    invoke-static {p0}, Landroidx/appcompat/view/menu/r4;->d([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    array-length v0, p0

    :goto_0
    if-lez v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static c([Ljava/lang/Object;Ljava/lang/Class;I)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    :goto_0
    array-length v1, p0

    if-ge p2, v1, :cond_2

    aget-object v1, p0, p2

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return p2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static d([Ljava/lang/Object;)Z
    .locals 0

    if-eqz p0, :cond_1

    array-length p0, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static e([Ljava/lang/Integer;)[I
    .locals 3

    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static f([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, p0

    if-ne v0, p1, :cond_1

    return-object p0

    :cond_1
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
