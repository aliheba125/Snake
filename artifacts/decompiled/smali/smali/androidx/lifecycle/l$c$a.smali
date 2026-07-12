.class public final Landroidx/lifecycle/l$c$a;
.super Landroidx/appcompat/view/menu/ao;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/l$c;->onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/lifecycle/l;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/l;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/l$c$a;->this$0:Landroidx/lifecycle/l;

    invoke-direct {p0}, Landroidx/appcompat/view/menu/ao;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPostResumed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/lifecycle/l$c$a;->this$0:Landroidx/lifecycle/l;

    invoke-virtual {p1}, Landroidx/lifecycle/l;->e()V

    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/lifecycle/l$c$a;->this$0:Landroidx/lifecycle/l;

    invoke-virtual {p1}, Landroidx/lifecycle/l;->f()V

    return-void
.end method
