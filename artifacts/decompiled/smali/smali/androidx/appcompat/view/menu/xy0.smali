.class public abstract Landroidx/appcompat/view/menu/xy0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/nio/ByteBuffer;

.field public c:I

.field public d:I

.field public e:Landroidx/appcompat/view/menu/r41;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroidx/appcompat/view/menu/r41;->a()Landroidx/appcompat/view/menu/r41;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/xy0;->e:Landroidx/appcompat/view/menu/r41;

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/xy0;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method public b(I)I
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/xy0;->d:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/xy0;->b:Ljava/nio/ByteBuffer;

    iget v1, p0, Landroidx/appcompat/view/menu/xy0;->c:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(ILjava/nio/ByteBuffer;)V
    .locals 0

    iput-object p2, p0, Landroidx/appcompat/view/menu/xy0;->b:Ljava/nio/ByteBuffer;

    if-eqz p2, :cond_0

    iput p1, p0, Landroidx/appcompat/view/menu/xy0;->a:I

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Landroidx/appcompat/view/menu/xy0;->c:I

    iget-object p2, p0, Landroidx/appcompat/view/menu/xy0;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/xy0;->d:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Landroidx/appcompat/view/menu/xy0;->a:I

    iput p1, p0, Landroidx/appcompat/view/menu/xy0;->c:I

    iput p1, p0, Landroidx/appcompat/view/menu/xy0;->d:I

    :goto_0
    return-void
.end method

.method public d(I)I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/xy0;->a:I

    add-int/2addr p1, v0

    iget-object v0, p0, Landroidx/appcompat/view/menu/xy0;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x4

    return p1
.end method

.method public e(I)I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/xy0;->a:I

    add-int/2addr p1, v0

    iget-object v0, p0, Landroidx/appcompat/view/menu/xy0;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Landroidx/appcompat/view/menu/xy0;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    return p1
.end method
