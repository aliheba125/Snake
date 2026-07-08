.class public abstract Landroidx/appcompat/view/menu/qx1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# static fields
.field public static final n:Landroidx/appcompat/view/menu/qx1;

.field public static final o:Landroidx/appcompat/view/menu/ey1;

.field public static final p:Ljava/util/Comparator;


# instance fields
.field public m:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/ky1;

    sget-object v1, Landroidx/appcompat/view/menu/v02;->d:[B

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/ky1;-><init>([B)V

    sput-object v0, Landroidx/appcompat/view/menu/qx1;->n:Landroidx/appcompat/view/menu/qx1;

    new-instance v0, Landroidx/appcompat/view/menu/qy1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/qy1;-><init>(Landroidx/appcompat/view/menu/oy1;)V

    sput-object v0, Landroidx/appcompat/view/menu/qx1;->o:Landroidx/appcompat/view/menu/ey1;

    new-instance v0, Landroidx/appcompat/view/menu/ux1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/ux1;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/qx1;->p:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/view/menu/qx1;->m:I

    return-void
.end method

.method public static synthetic g(B)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static h(III)I
    .locals 3

    sub-int v0, p1, p0

    or-int v1, p0, p1

    or-int/2addr v1, v0

    sub-int v2, p2, p1

    or-int/2addr v1, v2

    if-gez v1, :cond_2

    if-ltz p0, :cond_1

    if-ge p1, p0, :cond_0

    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Beginning index larger than ending index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "End index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Beginning index: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " < 0"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return v0
.end method

.method public static k(Ljava/lang/String;)Landroidx/appcompat/view/menu/qx1;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/ky1;

    sget-object v1, Landroidx/appcompat/view/menu/v02;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/ky1;-><init>([B)V

    return-object v0
.end method

.method public static n([BII)Landroidx/appcompat/view/menu/qx1;
    .locals 2

    add-int v0, p1, p2

    array-length v1, p0

    invoke-static {p1, v0, v1}, Landroidx/appcompat/view/menu/qx1;->h(III)I

    new-instance v0, Landroidx/appcompat/view/menu/ky1;

    sget-object v1, Landroidx/appcompat/view/menu/qx1;->o:Landroidx/appcompat/view/menu/ey1;

    invoke-interface {v1, p0, p1, p2}, Landroidx/appcompat/view/menu/ey1;->a([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/ky1;-><init>([B)V

    return-object v0
.end method

.method public static v(I)Landroidx/appcompat/view/menu/iy1;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/iy1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/view/menu/iy1;-><init>(ILandroidx/appcompat/view/menu/gy1;)V

    return-object v0
.end method


# virtual methods
.method public abstract d(I)B
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/qx1;->m:I

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/qx1;->m:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/qx1;->t()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Landroidx/appcompat/view/menu/qx1;->u(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Landroidx/appcompat/view/menu/qx1;->m:I

    :cond_1
    return v0
.end method

.method public abstract i(II)Landroidx/appcompat/view/menu/qx1;
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/wx1;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/wx1;-><init>(Landroidx/appcompat/view/menu/qx1;)V

    return-object v0
.end method

.method public abstract p(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public abstract r(Landroidx/appcompat/view/menu/sx1;)V
.end method

.method public abstract s(I)B
.end method

.method public abstract t()I
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/qx1;->t()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/qx1;->t()I

    move-result v2

    const/16 v4, 0x32

    if-gt v2, v4, :cond_0

    invoke-static {p0}, Landroidx/appcompat/view/menu/x62;->a(Landroidx/appcompat/view/menu/qx1;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/16 v2, 0x2f

    invoke-virtual {p0, v3, v2}, Landroidx/appcompat/view/menu/qx1;->i(II)Landroidx/appcompat/view/menu/qx1;

    move-result-object v2

    invoke-static {v2}, Landroidx/appcompat/view/menu/x62;->a(Landroidx/appcompat/view/menu/qx1;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "<ByteString@%s size=%d contents=\"%s\">"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract u(III)I
.end method

.method public final w()Ljava/lang/String;
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/v02;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/qx1;->t()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/qx1;->p(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract x()Z
.end method
