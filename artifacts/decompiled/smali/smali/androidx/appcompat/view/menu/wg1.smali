.class public final Landroidx/appcompat/view/menu/wg1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/qg1;


# instance fields
.field public final m:Ljava/lang/String;

.field public final n:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/wg1;->m:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/wg1;->n:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/wg1;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/wg1;->n:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final c()Landroidx/appcompat/view/menu/qg1;
    .locals 0

    return-object p0
.end method

.method public final d()Ljava/lang/Boolean;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Statement cannot be cast as Boolean"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/appcompat/view/menu/wg1;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/appcompat/view/menu/wg1;

    iget-object v1, p0, Landroidx/appcompat/view/menu/wg1;->m:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v3, p1, Landroidx/appcompat/view/menu/wg1;->m:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_2
    iget-object v1, p1, Landroidx/appcompat/view/menu/wg1;->m:Ljava/lang/String;

    if-eqz v1, :cond_3

    :goto_0
    return v2

    :cond_3
    iget-object v1, p0, Landroidx/appcompat/view/menu/wg1;->n:Ljava/util/ArrayList;

    iget-object p1, p1, Landroidx/appcompat/view/menu/wg1;->n:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    if-nez p1, :cond_5

    return v0

    :cond_5
    return v2
.end method

.method public final f()Ljava/lang/Double;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Statement cannot be cast as Double"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Statement cannot be cast as String"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/wg1;->m:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/appcompat/view/menu/wg1;->n:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Ljava/util/Iterator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final p(Ljava/lang/String;Landroidx/appcompat/view/menu/pw1;Ljava/util/List;)Landroidx/appcompat/view/menu/qg1;
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Statement is not an evaluated entity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
