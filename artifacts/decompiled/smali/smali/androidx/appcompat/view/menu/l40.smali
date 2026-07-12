.class public abstract Landroidx/appcompat/view/menu/l40;
.super Landroidx/appcompat/view/menu/k40;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/l40$a;,
        Landroidx/appcompat/view/menu/l40$c;,
        Landroidx/appcompat/view/menu/l40$d;,
        Landroidx/appcompat/view/menu/l40$b;
    }
.end annotation


# static fields
.field public static final n:Landroidx/appcompat/view/menu/u31;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/l40$b;

    sget-object v1, Landroidx/appcompat/view/menu/io0;->q:Landroidx/appcompat/view/menu/l40;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/l40$b;-><init>(Landroidx/appcompat/view/menu/l40;I)V

    sput-object v0, Landroidx/appcompat/view/menu/l40;->n:Landroidx/appcompat/view/menu/u31;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/k40;-><init>()V

    return-void
.end method

.method public static k([Ljava/lang/Object;)Landroidx/appcompat/view/menu/l40;
    .locals 1

    array-length v0, p0

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/l40;->n([Ljava/lang/Object;I)Landroidx/appcompat/view/menu/l40;

    move-result-object p0

    return-object p0
.end method

.method public static n([Ljava/lang/Object;I)Landroidx/appcompat/view/menu/l40;
    .locals 1

    if-nez p1, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/l40;->u()Landroidx/appcompat/view/menu/l40;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/io0;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/io0;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static varargs p([Ljava/lang/Object;)Landroidx/appcompat/view/menu/l40;
    .locals 0

    invoke-static {p0}, Landroidx/appcompat/view/menu/sf0;->b([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/view/menu/l40;->k([Ljava/lang/Object;)Landroidx/appcompat/view/menu/l40;

    move-result-object p0

    return-object p0
.end method

.method public static u()Landroidx/appcompat/view/menu/l40;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/io0;->q:Landroidx/appcompat/view/menu/l40;

    return-object v0
.end method

.method public static v(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/appcompat/view/menu/l40;
    .locals 0

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/view/menu/l40;->p([Ljava/lang/Object;)Landroidx/appcompat/view/menu/l40;

    move-result-object p0

    return-object p0
.end method

.method public static w(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroidx/appcompat/view/menu/l40;
    .locals 0

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/view/menu/l40;->p([Ljava/lang/Object;)Landroidx/appcompat/view/menu/l40;

    move-result-object p0

    return-object p0
.end method

.method public static x(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroidx/appcompat/view/menu/l40;
    .locals 0

    filled-new-array/range {p0 .. p6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/view/menu/l40;->p([Ljava/lang/Object;)Landroidx/appcompat/view/menu/l40;

    move-result-object p0

    return-object p0
.end method

.method public static z(Ljava/util/Comparator;Ljava/lang/Iterable;)Landroidx/appcompat/view/menu/l40;
    .locals 0

    invoke-static {p0}, Landroidx/appcompat/view/menu/nj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Landroidx/appcompat/view/menu/i60;->b(Ljava/lang/Iterable;)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/sf0;->b([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-static {p1, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    invoke-static {p1}, Landroidx/appcompat/view/menu/l40;->k([Ljava/lang/Object;)Landroidx/appcompat/view/menu/l40;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A(II)Landroidx/appcompat/view/menu/l40;
    .locals 2

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Landroidx/appcompat/view/menu/nj0;->m(III)V

    sub-int v0, p2, p1

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Landroidx/appcompat/view/menu/l40;->u()Landroidx/appcompat/view/menu/l40;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/l40;->B(II)Landroidx/appcompat/view/menu/l40;

    move-result-object p1

    return-object p1
.end method

.method public B(II)Landroidx/appcompat/view/menu/l40;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/l40$d;

    sub-int/2addr p2, p1

    invoke-direct {v0, p0, p1, p2}, Landroidx/appcompat/view/menu/l40$d;-><init>(Landroidx/appcompat/view/menu/l40;II)V

    return-object v0
.end method

.method public final add(ILjava/lang/Object;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/l40;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d([Ljava/lang/Object;I)I
    .locals 4

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int v2, p2, v1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr p2, v0

    return p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/l90;->a(Ljava/util/List;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 4

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    not-int v1, v1

    not-int v1, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/l90;->b(Ljava/util/List;Ljava/lang/Object;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l40;->r()Landroidx/appcompat/view/menu/t31;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/l90;->d(Ljava/util/List;Ljava/lang/Object;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public bridge synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l40;->s()Landroidx/appcompat/view/menu/u31;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/l40;->t(I)Landroidx/appcompat/view/menu/u31;

    move-result-object p1

    return-object p1
.end method

.method public r()Landroidx/appcompat/view/menu/t31;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l40;->s()Landroidx/appcompat/view/menu/u31;

    move-result-object v0

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public s()Landroidx/appcompat/view/menu/u31;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/l40;->t(I)Landroidx/appcompat/view/menu/u31;

    move-result-object v0

    return-object v0
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/l40;->A(II)Landroidx/appcompat/view/menu/l40;

    move-result-object p1

    return-object p1
.end method

.method public t(I)Landroidx/appcompat/view/menu/u31;
    .locals 1

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/nj0;->k(II)I

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Landroidx/appcompat/view/menu/l40;->n:Landroidx/appcompat/view/menu/u31;

    return-object p1

    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/l40$b;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/l40$b;-><init>(Landroidx/appcompat/view/menu/l40;I)V

    return-object v0
.end method

.method public y()Landroidx/appcompat/view/menu/l40;
    .locals 2

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/l40$c;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/l40$c;-><init>(Landroidx/appcompat/view/menu/l40;)V

    :goto_0
    return-object v0
.end method
