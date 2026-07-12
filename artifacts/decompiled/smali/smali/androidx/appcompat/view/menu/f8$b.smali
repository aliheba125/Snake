.class public final Landroidx/appcompat/view/menu/f8$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/i8$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/f8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/view/menu/f8$d;

.field public final synthetic b:Landroidx/appcompat/view/menu/f8;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/f8;Landroidx/appcompat/view/menu/f8$d;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/f8$b;->b:Landroidx/appcompat/view/menu/f8;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/view/menu/f8$b;->a:Landroidx/appcompat/view/menu/f8$d;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/f8;Landroidx/appcompat/view/menu/f8$d;Landroidx/appcompat/view/menu/f8$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/view/menu/f8$b;-><init>(Landroidx/appcompat/view/menu/f8;Landroidx/appcompat/view/menu/f8$d;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;Landroidx/appcompat/view/menu/i8$b;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/f8$b;->a:Landroidx/appcompat/view/menu/f8$d;

    iget-object v1, p0, Landroidx/appcompat/view/menu/f8$b;->b:Landroidx/appcompat/view/menu/f8;

    invoke-static {v1}, Landroidx/appcompat/view/menu/f8;->a(Landroidx/appcompat/view/menu/f8;)Landroidx/appcompat/view/menu/xc0;

    move-result-object v1

    invoke-interface {v1, p1}, Landroidx/appcompat/view/menu/xc0;->b(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    new-instance v1, Landroidx/appcompat/view/menu/f8$b$a;

    invoke-direct {v1, p0, p2}, Landroidx/appcompat/view/menu/f8$b$a;-><init>(Landroidx/appcompat/view/menu/f8$b;Landroidx/appcompat/view/menu/i8$b;)V

    invoke-interface {v0, p1, v1}, Landroidx/appcompat/view/menu/f8$d;->a(Ljava/lang/Object;Landroidx/appcompat/view/menu/f8$e;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BasicMessageChannel#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/f8$b;->b:Landroidx/appcompat/view/menu/f8;

    invoke-static {v1}, Landroidx/appcompat/view/menu/f8;->b(Landroidx/appcompat/view/menu/f8;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to handle message"

    invoke-static {v0, v1, p1}, Landroidx/appcompat/view/menu/ea0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Landroidx/appcompat/view/menu/i8$b;->a(Ljava/nio/ByteBuffer;)V

    :goto_0
    return-void
.end method
