.class public final Landroidx/appcompat/view/menu/g51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/g51$a;
    }
.end annotation


# static fields
.field public static final r:Landroidx/appcompat/view/menu/g51$a;

.field public static final s:Landroidx/appcompat/view/menu/g51;

.field public static final t:Landroidx/appcompat/view/menu/g51;

.field public static final u:Landroidx/appcompat/view/menu/g51;

.field public static final v:Landroidx/appcompat/view/menu/g51;


# instance fields
.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:Ljava/lang/String;

.field public final q:Landroidx/appcompat/view/menu/i80;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/appcompat/view/menu/g51$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/g51$a;-><init>(Landroidx/appcompat/view/menu/lj;)V

    sput-object v0, Landroidx/appcompat/view/menu/g51;->r:Landroidx/appcompat/view/menu/g51$a;

    new-instance v0, Landroidx/appcompat/view/menu/g51;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, v1, v1, v1, v2}, Landroidx/appcompat/view/menu/g51;-><init>(IIILjava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/g51;->s:Landroidx/appcompat/view/menu/g51;

    new-instance v0, Landroidx/appcompat/view/menu/g51;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v1, v2}, Landroidx/appcompat/view/menu/g51;-><init>(IIILjava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/g51;->t:Landroidx/appcompat/view/menu/g51;

    new-instance v0, Landroidx/appcompat/view/menu/g51;

    invoke-direct {v0, v3, v1, v1, v2}, Landroidx/appcompat/view/menu/g51;-><init>(IIILjava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/g51;->u:Landroidx/appcompat/view/menu/g51;

    sput-object v0, Landroidx/appcompat/view/menu/g51;->v:Landroidx/appcompat/view/menu/g51;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/appcompat/view/menu/g51;->m:I

    iput p2, p0, Landroidx/appcompat/view/menu/g51;->n:I

    iput p3, p0, Landroidx/appcompat/view/menu/g51;->o:I

    iput-object p4, p0, Landroidx/appcompat/view/menu/g51;->p:Ljava/lang/String;

    .line 3
    new-instance p1, Landroidx/appcompat/view/menu/g51$b;

    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/g51$b;-><init>(Landroidx/appcompat/view/menu/g51;)V

    invoke-static {p1}, Landroidx/appcompat/view/menu/l80;->a(Landroidx/appcompat/view/menu/dw;)Landroidx/appcompat/view/menu/i80;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/g51;->q:Landroidx/appcompat/view/menu/i80;

    return-void
.end method

.method public synthetic constructor <init>(IIILjava/lang/String;Landroidx/appcompat/view/menu/lj;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/g51;-><init>(IIILjava/lang/String;)V

    return-void
.end method

.method public static final synthetic c()Landroidx/appcompat/view/menu/g51;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/g51;->t:Landroidx/appcompat/view/menu/g51;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/appcompat/view/menu/g51;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/g51;->e(Landroidx/appcompat/view/menu/g51;)I

    move-result p1

    return p1
.end method

.method public e(Landroidx/appcompat/view/menu/g51;)I
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g51;->g()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g51;->g()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroidx/appcompat/view/menu/g51;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroidx/appcompat/view/menu/g51;->m:I

    check-cast p1, Landroidx/appcompat/view/menu/g51;

    iget v2, p1, Landroidx/appcompat/view/menu/g51;->m:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroidx/appcompat/view/menu/g51;->n:I

    iget v2, p1, Landroidx/appcompat/view/menu/g51;->n:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroidx/appcompat/view/menu/g51;->o:I

    iget p1, p1, Landroidx/appcompat/view/menu/g51;->o:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final g()Ljava/math/BigInteger;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/g51;->q:Landroidx/appcompat/view/menu/i80;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/i80;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-bigInteger>(...)"

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/math/BigInteger;

    return-object v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/g51;->m:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x20f

    iget v1, p0, Landroidx/appcompat/view/menu/g51;->m:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/appcompat/view/menu/g51;->n:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/appcompat/view/menu/g51;->o:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/g51;->n:I

    return v0
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/g51;->o:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/g51;->p:Ljava/lang/String;

    invoke-static {v0}, Landroidx/appcompat/view/menu/nx0;->d(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/g51;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroidx/appcompat/view/menu/g51;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, p0, Landroidx/appcompat/view/menu/g51;->n:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/appcompat/view/menu/g51;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
