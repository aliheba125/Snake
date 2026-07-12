.class public final Landroidx/appcompat/view/menu/vf1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public m:I

.field public final synthetic n:Landroidx/appcompat/view/menu/pf1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/pf1;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/vf1;->n:Landroidx/appcompat/view/menu/pf1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Landroidx/appcompat/view/menu/vf1;->m:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/vf1;->m:I

    iget-object v1, p0, Landroidx/appcompat/view/menu/vf1;->n:Landroidx/appcompat/view/menu/pf1;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pf1;->v()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Landroidx/appcompat/view/menu/vf1;->m:I

    iget-object v1, p0, Landroidx/appcompat/view/menu/vf1;->n:Landroidx/appcompat/view/menu/pf1;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pf1;->v()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/vf1;->n:Landroidx/appcompat/view/menu/pf1;

    iget v1, p0, Landroidx/appcompat/view/menu/vf1;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/appcompat/view/menu/vf1;->m:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/pf1;->s(I)Landroidx/appcompat/view/menu/qg1;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    iget v1, p0, Landroidx/appcompat/view/menu/vf1;->m:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Out of bounds index: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
