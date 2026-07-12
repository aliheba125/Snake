.class public Landroidx/appcompat/view/menu/kd0$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/kd0$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/kd0$a;->a(Ljava/nio/ByteBuffer;Landroidx/appcompat/view/menu/i8$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/i8$b;

.field public final synthetic b:Landroidx/appcompat/view/menu/kd0$a;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/kd0$a;Landroidx/appcompat/view/menu/i8$b;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/kd0$a$a;->b:Landroidx/appcompat/view/menu/kd0$a;

    iput-object p2, p0, Landroidx/appcompat/view/menu/kd0$a$a;->a:Landroidx/appcompat/view/menu/i8$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/kd0$a$a;->a:Landroidx/appcompat/view/menu/i8$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroidx/appcompat/view/menu/i8$b;->a(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/kd0$a$a;->a:Landroidx/appcompat/view/menu/i8$b;

    iget-object v1, p0, Landroidx/appcompat/view/menu/kd0$a$a;->b:Landroidx/appcompat/view/menu/kd0$a;

    iget-object v1, v1, Landroidx/appcompat/view/menu/kd0$a;->b:Landroidx/appcompat/view/menu/kd0;

    invoke-static {v1}, Landroidx/appcompat/view/menu/kd0;->a(Landroidx/appcompat/view/menu/kd0;)Landroidx/appcompat/view/menu/ld0;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroidx/appcompat/view/menu/ld0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/i8$b;->a(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/kd0$a$a;->a:Landroidx/appcompat/view/menu/i8$b;

    iget-object v1, p0, Landroidx/appcompat/view/menu/kd0$a$a;->b:Landroidx/appcompat/view/menu/kd0$a;

    iget-object v1, v1, Landroidx/appcompat/view/menu/kd0$a;->b:Landroidx/appcompat/view/menu/kd0;

    invoke-static {v1}, Landroidx/appcompat/view/menu/kd0;->a(Landroidx/appcompat/view/menu/kd0;)Landroidx/appcompat/view/menu/ld0;

    move-result-object v1

    invoke-interface {v1, p1}, Landroidx/appcompat/view/menu/ld0;->a(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/i8$b;->a(Ljava/nio/ByteBuffer;)V

    return-void
.end method
