.class public final synthetic Landroidx/appcompat/view/menu/i11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/util/concurrent/ScheduledExecutorService;

.field public final synthetic c:Lcom/google/firebase/messaging/FirebaseMessaging;

.field public final synthetic d:Landroidx/appcompat/view/menu/cd0;

.field public final synthetic e:Landroidx/appcompat/view/menu/ux;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/messaging/FirebaseMessaging;Landroidx/appcompat/view/menu/cd0;Landroidx/appcompat/view/menu/ux;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/i11;->a:Landroid/content/Context;

    iput-object p2, p0, Landroidx/appcompat/view/menu/i11;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Landroidx/appcompat/view/menu/i11;->c:Lcom/google/firebase/messaging/FirebaseMessaging;

    iput-object p4, p0, Landroidx/appcompat/view/menu/i11;->d:Landroidx/appcompat/view/menu/cd0;

    iput-object p5, p0, Landroidx/appcompat/view/menu/i11;->e:Landroidx/appcompat/view/menu/ux;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/view/menu/i11;->a:Landroid/content/Context;

    iget-object v1, p0, Landroidx/appcompat/view/menu/i11;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Landroidx/appcompat/view/menu/i11;->c:Lcom/google/firebase/messaging/FirebaseMessaging;

    iget-object v3, p0, Landroidx/appcompat/view/menu/i11;->d:Landroidx/appcompat/view/menu/cd0;

    iget-object v4, p0, Landroidx/appcompat/view/menu/i11;->e:Landroidx/appcompat/view/menu/ux;

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/appcompat/view/menu/j11;->a(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/messaging/FirebaseMessaging;Landroidx/appcompat/view/menu/cd0;Landroidx/appcompat/view/menu/ux;)Landroidx/appcompat/view/menu/j11;

    move-result-object v0

    return-object v0
.end method
