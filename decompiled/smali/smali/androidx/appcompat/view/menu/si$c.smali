.class public Landroidx/appcompat/view/menu/si$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/i8;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/si;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/view/menu/ui;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ui;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/si$c;->a:Landroidx/appcompat/view/menu/ui;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/ui;Landroidx/appcompat/view/menu/si$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/si$c;-><init>(Landroidx/appcompat/view/menu/ui;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroidx/appcompat/view/menu/i8$a;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/si$c;->a:Landroidx/appcompat/view/menu/ui;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/ui;->a(Ljava/lang/String;Landroidx/appcompat/view/menu/i8$a;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/nio/ByteBuffer;Landroidx/appcompat/view/menu/i8$b;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/si$c;->a:Landroidx/appcompat/view/menu/ui;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/view/menu/ui;->b(Ljava/lang/String;Ljava/nio/ByteBuffer;Landroidx/appcompat/view/menu/i8$b;)V

    return-void
.end method
