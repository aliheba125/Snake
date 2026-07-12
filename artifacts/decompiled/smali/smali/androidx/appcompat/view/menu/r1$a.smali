.class public Landroidx/appcompat/view/menu/r1$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/r1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/r1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/r1;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/r1$a;->a:Landroidx/appcompat/view/menu/r1;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/r1$a;->a:Landroidx/appcompat/view/menu/r1;

    invoke-static {v0}, Landroidx/appcompat/view/menu/r1;->b(Landroidx/appcompat/view/menu/r1;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
