.class public final Landroidx/appcompat/view/menu/kf0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/kf0$a;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/Object;

.field public static d:Ljava/util/Set;

.field public static final e:Ljava/lang/Object;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/kf0;->c:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/kf0;->d:Ljava/util/Set;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/kf0;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/kf0;->a:Landroid/content/Context;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Landroidx/appcompat/view/menu/kf0;->b:Landroid/app/NotificationManager;

    return-void
.end method

.method public static b(Landroid/content/Context;)Landroidx/appcompat/view/menu/kf0;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/kf0;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/kf0;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/kf0;->b:Landroid/app/NotificationManager;

    invoke-static {v0}, Landroidx/appcompat/view/menu/kf0$a;->a(Landroid/app/NotificationManager;)Z

    move-result v0

    return v0
.end method
