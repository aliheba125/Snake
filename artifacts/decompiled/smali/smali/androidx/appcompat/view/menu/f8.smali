.class public final Landroidx/appcompat/view/menu/f8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/f8$e;,
        Landroidx/appcompat/view/menu/f8$c;,
        Landroidx/appcompat/view/menu/f8$b;,
        Landroidx/appcompat/view/menu/f8$d;
    }
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/view/menu/i8;

.field public final b:Ljava/lang/String;

.field public final c:Landroidx/appcompat/view/menu/xc0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/i8;Ljava/lang/String;Landroidx/appcompat/view/menu/xc0;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/appcompat/view/menu/f8;-><init>(Landroidx/appcompat/view/menu/i8;Ljava/lang/String;Landroidx/appcompat/view/menu/xc0;Landroidx/appcompat/view/menu/i8$c;)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/i8;Ljava/lang/String;Landroidx/appcompat/view/menu/xc0;Landroidx/appcompat/view/menu/i8$c;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/f8;->a:Landroidx/appcompat/view/menu/i8;

    iput-object p2, p0, Landroidx/appcompat/view/menu/f8;->b:Ljava/lang/String;

    iput-object p3, p0, Landroidx/appcompat/view/menu/f8;->c:Landroidx/appcompat/view/menu/xc0;

    return-void
.end method

.method public static synthetic a(Landroidx/appcompat/view/menu/f8;)Landroidx/appcompat/view/menu/xc0;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/f8;->c:Landroidx/appcompat/view/menu/xc0;

    return-object p0
.end method

.method public static synthetic b(Landroidx/appcompat/view/menu/f8;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/f8;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public c(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/f8;->d(Ljava/lang/Object;Landroidx/appcompat/view/menu/f8$e;)V

    return-void
.end method

.method public d(Ljava/lang/Object;Landroidx/appcompat/view/menu/f8$e;)V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/f8;->a:Landroidx/appcompat/view/menu/i8;

    iget-object v1, p0, Landroidx/appcompat/view/menu/f8;->b:Ljava/lang/String;

    iget-object v2, p0, Landroidx/appcompat/view/menu/f8;->c:Landroidx/appcompat/view/menu/xc0;

    invoke-interface {v2, p1}, Landroidx/appcompat/view/menu/xc0;->a(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Landroidx/appcompat/view/menu/f8$c;

    invoke-direct {v3, p0, p2, v2}, Landroidx/appcompat/view/menu/f8$c;-><init>(Landroidx/appcompat/view/menu/f8;Landroidx/appcompat/view/menu/f8$e;Landroidx/appcompat/view/menu/f8$a;)V

    move-object v2, v3

    :goto_0
    invoke-interface {v0, v1, p1, v2}, Landroidx/appcompat/view/menu/i8;->b(Ljava/lang/String;Ljava/nio/ByteBuffer;Landroidx/appcompat/view/menu/i8$b;)V

    return-void
.end method

.method public e(Landroidx/appcompat/view/menu/f8$d;)V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/f8;->a:Landroidx/appcompat/view/menu/i8;

    iget-object v1, p0, Landroidx/appcompat/view/menu/f8;->b:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Landroidx/appcompat/view/menu/f8$b;

    invoke-direct {v3, p0, p1, v2}, Landroidx/appcompat/view/menu/f8$b;-><init>(Landroidx/appcompat/view/menu/f8;Landroidx/appcompat/view/menu/f8$d;Landroidx/appcompat/view/menu/f8$a;)V

    move-object v2, v3

    :goto_0
    invoke-interface {v0, v1, v2}, Landroidx/appcompat/view/menu/i8;->a(Ljava/lang/String;Landroidx/appcompat/view/menu/i8$a;)V

    return-void
.end method
