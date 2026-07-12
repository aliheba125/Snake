.class public final Landroidx/appcompat/view/menu/h1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/appcompat/view/menu/h1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/h1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/h1;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/h1;->a:Landroidx/appcompat/view/menu/h1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)Z
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    return p1
.end method
