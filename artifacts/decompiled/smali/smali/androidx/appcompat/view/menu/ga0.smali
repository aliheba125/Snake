.class public final Landroidx/appcompat/view/menu/ga0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/ga0$b;,
        Landroidx/appcompat/view/menu/ga0$a;
    }
.end annotation


# static fields
.field public static final c:Landroidx/appcompat/view/menu/ga0;


# instance fields
.field public final a:J

.field public final b:Landroidx/appcompat/view/menu/ga0$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/ga0$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/ga0$a;-><init>()V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ga0$a;->a()Landroidx/appcompat/view/menu/ga0;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/ga0;->c:Landroidx/appcompat/view/menu/ga0;

    return-void
.end method

.method public constructor <init>(JLandroidx/appcompat/view/menu/ga0$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/appcompat/view/menu/ga0;->a:J

    iput-object p3, p0, Landroidx/appcompat/view/menu/ga0;->b:Landroidx/appcompat/view/menu/ga0$b;

    return-void
.end method

.method public static c()Landroidx/appcompat/view/menu/ga0$a;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/ga0$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/ga0$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Landroidx/appcompat/view/menu/ga0;->a:J

    return-wide v0
.end method

.method public b()Landroidx/appcompat/view/menu/ga0$b;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ga0;->b:Landroidx/appcompat/view/menu/ga0$b;

    return-object v0
.end method
