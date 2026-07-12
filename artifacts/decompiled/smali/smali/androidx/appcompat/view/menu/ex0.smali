.class public final Landroidx/appcompat/view/menu/ex0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/ex0$a;
    }
.end annotation


# static fields
.field public static final c:Landroidx/appcompat/view/menu/ex0;


# instance fields
.field public final a:J

.field public final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/ex0$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/ex0$a;-><init>()V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ex0$a;->a()Landroidx/appcompat/view/menu/ex0;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/ex0;->c:Landroidx/appcompat/view/menu/ex0;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/appcompat/view/menu/ex0;->a:J

    iput-wide p3, p0, Landroidx/appcompat/view/menu/ex0;->b:J

    return-void
.end method

.method public static c()Landroidx/appcompat/view/menu/ex0$a;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/ex0$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/ex0$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Landroidx/appcompat/view/menu/ex0;->a:J

    return-wide v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Landroidx/appcompat/view/menu/ex0;->b:J

    return-wide v0
.end method
