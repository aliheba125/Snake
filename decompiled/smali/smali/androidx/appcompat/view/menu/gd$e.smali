.class public abstract Landroidx/appcompat/view/menu/gd$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/gd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "e"
.end annotation


# instance fields
.field public m:I

.field public n:I

.field public o:I

.field public final synthetic p:Landroidx/appcompat/view/menu/gd;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/gd;)V
    .locals 1

    iput-object p1, p0, Landroidx/appcompat/view/menu/gd$e;->p:Landroidx/appcompat/view/menu/gd;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroidx/appcompat/view/menu/gd;->a(Landroidx/appcompat/view/menu/gd;)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/gd$e;->m:I

    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/gd;->z()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/gd$e;->n:I

    const/4 p1, -0x1

    iput p1, p0, Landroidx/appcompat/view/menu/gd$e;->o:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/gd;Landroidx/appcompat/view/menu/gd$a;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/gd$e;-><init>(Landroidx/appcompat/view/menu/gd;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/gd$e;->p:Landroidx/appcompat/view/menu/gd;

    invoke-static {v0}, Landroidx/appcompat/view/menu/gd;->a(Landroidx/appcompat/view/menu/gd;)I

    move-result v0

    iget v1, p0, Landroidx/appcompat/view/menu/gd$e;->m:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public abstract c(I)Ljava/lang/Object;
.end method

.method public d()V
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/gd$e;->m:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroidx/appcompat/view/menu/gd$e;->m:I

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/gd$e;->n:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/gd$e;->b()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/gd$e;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/appcompat/view/menu/gd$e;->n:I

    iput v0, p0, Landroidx/appcompat/view/menu/gd$e;->o:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/gd$e;->c(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/gd$e;->p:Landroidx/appcompat/view/menu/gd;

    iget v2, p0, Landroidx/appcompat/view/menu/gd$e;->n:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/gd;->A(I)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/view/menu/gd$e;->n:I

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/gd$e;->b()V

    iget v0, p0, Landroidx/appcompat/view/menu/gd$e;->o:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/appcompat/view/menu/mc;->c(Z)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/gd$e;->d()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/gd$e;->p:Landroidx/appcompat/view/menu/gd;

    iget v1, p0, Landroidx/appcompat/view/menu/gd$e;->o:I

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/gd;->b(Landroidx/appcompat/view/menu/gd;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/gd;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/appcompat/view/menu/gd$e;->p:Landroidx/appcompat/view/menu/gd;

    iget v1, p0, Landroidx/appcompat/view/menu/gd$e;->n:I

    iget v2, p0, Landroidx/appcompat/view/menu/gd$e;->o:I

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/gd;->o(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/gd$e;->n:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/view/menu/gd$e;->o:I

    return-void
.end method
