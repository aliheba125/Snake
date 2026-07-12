.class public final Landroidx/appcompat/view/menu/id;
.super Landroidx/appcompat/view/menu/vg0;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final m:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/vg0;-><init>()V

    invoke-static {p1}, Landroidx/appcompat/view/menu/nj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    iput-object p1, p0, Landroidx/appcompat/view/menu/id;->m:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/id;->m:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Landroidx/appcompat/view/menu/id;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/appcompat/view/menu/id;

    iget-object v0, p0, Landroidx/appcompat/view/menu/id;->m:Ljava/util/Comparator;

    iget-object p1, p1, Landroidx/appcompat/view/menu/id;->m:Ljava/util/Comparator;

    invoke-interface {v0, p1}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/id;->m:Ljava/util/Comparator;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/id;->m:Ljava/util/Comparator;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
