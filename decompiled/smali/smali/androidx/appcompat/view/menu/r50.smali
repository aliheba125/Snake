.class public Landroidx/appcompat/view/menu/r50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/r50$a;
    }
.end annotation


# static fields
.field public static final p:Landroidx/appcompat/view/menu/r50$a;


# instance fields
.field public final m:I

.field public final n:I

.field public final o:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/r50$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/r50$a;-><init>(Landroidx/appcompat/view/menu/lj;)V

    sput-object v0, Landroidx/appcompat/view/menu/r50;->p:Landroidx/appcompat/view/menu/r50$a;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_1

    const/high16 v0, -0x80000000

    if-eq p3, v0, :cond_0

    iput p1, p0, Landroidx/appcompat/view/menu/r50;->m:I

    invoke-static {p1, p2, p3}, Landroidx/appcompat/view/menu/pk0;->b(III)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/r50;->n:I

    iput p3, p0, Landroidx/appcompat/view/menu/r50;->o:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step must be greater than Int.MIN_VALUE to avoid overflow on negation."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step must be non-zero."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final d()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/r50;->m:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/appcompat/view/menu/r50;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/r50;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/appcompat/view/menu/r50;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/r50;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Landroidx/appcompat/view/menu/r50;->m:I

    check-cast p1, Landroidx/appcompat/view/menu/r50;

    iget v1, p1, Landroidx/appcompat/view/menu/r50;->m:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroidx/appcompat/view/menu/r50;->n:I

    iget v1, p1, Landroidx/appcompat/view/menu/r50;->n:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroidx/appcompat/view/menu/r50;->o:I

    iget p1, p1, Landroidx/appcompat/view/menu/r50;->o:I

    if-ne v0, p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/r50;->n:I

    return v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/r50;->o:I

    return v0
.end method

.method public h()Landroidx/appcompat/view/menu/q50;
    .locals 4

    new-instance v0, Landroidx/appcompat/view/menu/s50;

    iget v1, p0, Landroidx/appcompat/view/menu/r50;->m:I

    iget v2, p0, Landroidx/appcompat/view/menu/r50;->n:I

    iget v3, p0, Landroidx/appcompat/view/menu/r50;->o:I

    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/view/menu/s50;-><init>(III)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/r50;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/appcompat/view/menu/r50;->m:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/appcompat/view/menu/r50;->n:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/appcompat/view/menu/r50;->o:I

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 4

    iget v0, p0, Landroidx/appcompat/view/menu/r50;->o:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    iget v0, p0, Landroidx/appcompat/view/menu/r50;->m:I

    iget v3, p0, Landroidx/appcompat/view/menu/r50;->n:I

    if-le v0, v3, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    iget v0, p0, Landroidx/appcompat/view/menu/r50;->m:I

    iget v3, p0, Landroidx/appcompat/view/menu/r50;->n:I

    if-ge v0, v3, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/r50;->h()Landroidx/appcompat/view/menu/q50;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Landroidx/appcompat/view/menu/r50;->o:I

    const-string v1, " step "

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroidx/appcompat/view/menu/r50;->m:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/appcompat/view/menu/r50;->n:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/appcompat/view/menu/r50;->o:I

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroidx/appcompat/view/menu/r50;->m:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " downTo "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/appcompat/view/menu/r50;->n:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/appcompat/view/menu/r50;->o:I

    neg-int v1, v1

    goto :goto_0

    :goto_1
    return-object v0
.end method
