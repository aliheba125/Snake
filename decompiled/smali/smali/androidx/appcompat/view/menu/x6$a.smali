.class public Landroidx/appcompat/view/menu/x6$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/x6;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/x6;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/x6;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/x6$a;->a:Landroidx/appcompat/view/menu/x6;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/x6$a;->a:Landroidx/appcompat/view/menu/x6;

    invoke-static {p1}, Landroidx/appcompat/view/menu/x6;->h(Landroidx/appcompat/view/menu/x6;)Landroidx/appcompat/view/menu/pt0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt0;->i()V

    :cond_1
    return-void
.end method
