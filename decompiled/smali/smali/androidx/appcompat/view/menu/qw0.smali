.class public final Landroidx/appcompat/view/menu/qw0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/ld0;


# static fields
.field public static final b:Landroidx/appcompat/view/menu/qw0;


# instance fields
.field public final a:Landroidx/appcompat/view/menu/pw0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/qw0;

    sget-object v1, Landroidx/appcompat/view/menu/pw0;->a:Landroidx/appcompat/view/menu/pw0;

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/qw0;-><init>(Landroidx/appcompat/view/menu/pw0;)V

    sput-object v0, Landroidx/appcompat/view/menu/qw0;->b:Landroidx/appcompat/view/menu/qw0;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/pw0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/qw0;->a:Landroidx/appcompat/view/menu/pw0;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/pw0$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/pw0$a;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v2, p0, Landroidx/appcompat/view/menu/qw0;->a:Landroidx/appcompat/view/menu/pw0;

    invoke-virtual {v2, v0, p1}, Landroidx/appcompat/view/menu/pw0;->p(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pw0$a;->a()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-virtual {p1, v2, v1, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/pw0$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/pw0$a;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/qw0;->a:Landroidx/appcompat/view/menu/pw0;

    invoke-virtual {v1, v0, p1}, Landroidx/appcompat/view/menu/pw0;->p(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/qw0;->a:Landroidx/appcompat/view/menu/pw0;

    invoke-virtual {p1, v0, p2}, Landroidx/appcompat/view/menu/pw0;->p(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    instance-of p1, p3, Ljava/lang/Throwable;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/qw0;->a:Landroidx/appcompat/view/menu/pw0;

    check-cast p3, Ljava/lang/Throwable;

    invoke-static {p3}, Landroidx/appcompat/view/menu/ea0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroidx/appcompat/view/menu/pw0;->p(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/qw0;->a:Landroidx/appcompat/view/menu/pw0;

    invoke-virtual {p1, v0, p3}, Landroidx/appcompat/view/menu/pw0;->p(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    :goto_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/qw0;->a:Landroidx/appcompat/view/menu/pw0;

    invoke-virtual {p1, v0, p4}, Landroidx/appcompat/view/menu/pw0;->p(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pw0$a;->a()[B

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p4

    invoke-virtual {p1, p2, p3, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/pw0$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/pw0$a;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/qw0;->a:Landroidx/appcompat/view/menu/pw0;

    invoke-virtual {v1, v0, p1}, Landroidx/appcompat/view/menu/pw0;->p(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/qw0;->a:Landroidx/appcompat/view/menu/pw0;

    invoke-virtual {p1, v0, p2}, Landroidx/appcompat/view/menu/pw0;->p(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    instance-of p1, p3, Ljava/lang/Throwable;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/qw0;->a:Landroidx/appcompat/view/menu/pw0;

    check-cast p3, Ljava/lang/Throwable;

    invoke-static {p3}, Landroidx/appcompat/view/menu/ea0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroidx/appcompat/view/menu/pw0;->p(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/qw0;->a:Landroidx/appcompat/view/menu/pw0;

    invoke-virtual {p1, v0, p3}, Landroidx/appcompat/view/menu/pw0;->p(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pw0$a;->a()[B

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-virtual {p1, p2, p3, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public d(Ljava/nio/ByteBuffer;)Landroidx/appcompat/view/menu/id0;
    .locals 3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Landroidx/appcompat/view/menu/qw0;->a:Landroidx/appcompat/view/menu/pw0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/pw0;->f(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/qw0;->a:Landroidx/appcompat/view/menu/pw0;

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/pw0;->f(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Landroidx/appcompat/view/menu/id0;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Landroidx/appcompat/view/menu/id0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Method call corrupted"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/qw0;->a:Landroidx/appcompat/view/menu/pw0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/pw0;->f(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/qw0;->a:Landroidx/appcompat/view/menu/pw0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/pw0;->f(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/qw0;->a:Landroidx/appcompat/view/menu/pw0;

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/pw0;->f(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/qw0;->a:Landroidx/appcompat/view/menu/pw0;

    invoke-virtual {v2, p1}, Landroidx/appcompat/view/menu/pw0;->f(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_3

    if-eqz v1, :cond_2

    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_3

    :cond_2
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Landroidx/appcompat/view/menu/lt;

    check-cast v0, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2}, Landroidx/appcompat/view/menu/lt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Envelope corrupted"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Landroidx/appcompat/view/menu/id0;)Ljava/nio/ByteBuffer;
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/pw0$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/pw0$a;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/view/menu/qw0;->a:Landroidx/appcompat/view/menu/pw0;

    iget-object v2, p1, Landroidx/appcompat/view/menu/id0;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/view/menu/pw0;->p(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/qw0;->a:Landroidx/appcompat/view/menu/pw0;

    iget-object p1, p1, Landroidx/appcompat/view/menu/id0;->b:Ljava/lang/Object;

    invoke-virtual {v1, v0, p1}, Landroidx/appcompat/view/menu/pw0;->p(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pw0$a;->a()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-object p1
.end method
