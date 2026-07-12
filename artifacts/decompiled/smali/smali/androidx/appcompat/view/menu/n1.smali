.class public Landroidx/appcompat/view/menu/n1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Landroidx/appcompat/view/menu/n1;


# instance fields
.field public a:Ljava/util/LinkedList;

.field public b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/n1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/n1;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/n1;->c:Landroidx/appcompat/view/menu/n1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/n1;->a:Ljava/util/LinkedList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/n1;->b:Z

    return-void
.end method

.method public static bridge synthetic a(Landroidx/appcompat/view/menu/n1;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/n1;->a:Ljava/util/LinkedList;

    return-object p0
.end method

.method public static bridge synthetic b(Landroidx/appcompat/view/menu/n1;Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/n1;->b:Z

    return-void
.end method

.method public static c()Landroidx/appcompat/view/menu/n1;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/n1;->c:Landroidx/appcompat/view/menu/n1;

    return-object v0
.end method


# virtual methods
.method public d(Landroid/app/Application;)V
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/n1;->a:Ljava/util/LinkedList;

    new-instance v0, Landroidx/appcompat/view/menu/n1$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/n1$a;-><init>(Landroidx/appcompat/view/menu/n1;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
