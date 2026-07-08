.class public Landroidx/appcompat/view/menu/f8$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/f8$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/f8$b;->a(Ljava/nio/ByteBuffer;Landroidx/appcompat/view/menu/i8$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/i8$b;

.field public final synthetic b:Landroidx/appcompat/view/menu/f8$b;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/f8$b;Landroidx/appcompat/view/menu/i8$b;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/f8$b$a;->b:Landroidx/appcompat/view/menu/f8$b;

    iput-object p2, p0, Landroidx/appcompat/view/menu/f8$b$a;->a:Landroidx/appcompat/view/menu/i8$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/f8$b$a;->a:Landroidx/appcompat/view/menu/i8$b;

    iget-object v1, p0, Landroidx/appcompat/view/menu/f8$b$a;->b:Landroidx/appcompat/view/menu/f8$b;

    iget-object v1, v1, Landroidx/appcompat/view/menu/f8$b;->b:Landroidx/appcompat/view/menu/f8;

    invoke-static {v1}, Landroidx/appcompat/view/menu/f8;->a(Landroidx/appcompat/view/menu/f8;)Landroidx/appcompat/view/menu/xc0;

    move-result-object v1

    invoke-interface {v1, p1}, Landroidx/appcompat/view/menu/xc0;->a(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/i8$b;->a(Ljava/nio/ByteBuffer;)V

    return-void
.end method
