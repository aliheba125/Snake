.class public final Landroidx/appcompat/view/menu/ko0;
.super Landroidx/appcompat/view/menu/o40;
.source "SourceFile"


# static fields
.field public static final t:[Ljava/lang/Object;

.field public static final u:Landroidx/appcompat/view/menu/ko0;


# instance fields
.field public final transient o:[Ljava/lang/Object;

.field public final transient p:I

.field public final transient q:[Ljava/lang/Object;

.field public final transient r:I

.field public final transient s:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x0

    new-array v4, v0, [Ljava/lang/Object;

    sput-object v4, Landroidx/appcompat/view/menu/ko0;->t:[Ljava/lang/Object;

    new-instance v0, Landroidx/appcompat/view/menu/ko0;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, v4

    invoke-direct/range {v1 .. v6}, Landroidx/appcompat/view/menu/ko0;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    sput-object v0, Landroidx/appcompat/view/menu/ko0;->u:Landroidx/appcompat/view/menu/ko0;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/o40;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/ko0;->o:[Ljava/lang/Object;

    iput p2, p0, Landroidx/appcompat/view/menu/ko0;->p:I

    iput-object p3, p0, Landroidx/appcompat/view/menu/ko0;->q:[Ljava/lang/Object;

    iput p4, p0, Landroidx/appcompat/view/menu/ko0;->r:I

    iput p5, p0, Landroidx/appcompat/view/menu/ko0;->s:I

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/ko0;->q:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Landroidx/appcompat/view/menu/ty;->c(Ljava/lang/Object;)I

    move-result v2

    :goto_0
    iget v3, p0, Landroidx/appcompat/view/menu/ko0;->r:I

    and-int/2addr v2, v3

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public d([Ljava/lang/Object;I)I
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/ko0;->o:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Landroidx/appcompat/view/menu/ko0;->s:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Landroidx/appcompat/view/menu/ko0;->s:I

    add-int/2addr p2, p1

    return p2
.end method

.method public f()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ko0;->o:[Ljava/lang/Object;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/ko0;->s:I

    return v0
.end method

.method public h()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/ko0;->p:I

    return v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ko0;->z()Landroidx/appcompat/view/menu/t31;

    move-result-object v0

    return-object v0
.end method

.method public s()Landroidx/appcompat/view/menu/l40;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ko0;->o:[Ljava/lang/Object;

    iget v1, p0, Landroidx/appcompat/view/menu/ko0;->s:I

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/l40;->n([Ljava/lang/Object;I)Landroidx/appcompat/view/menu/l40;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/ko0;->s:I

    return v0
.end method

.method public t()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public z()Landroidx/appcompat/view/menu/t31;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o40;->k()Landroidx/appcompat/view/menu/l40;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/l40;->r()Landroidx/appcompat/view/menu/t31;

    move-result-object v0

    return-object v0
.end method
